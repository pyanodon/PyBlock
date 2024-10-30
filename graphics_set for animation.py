from glob import glob
import re

def process_entity(start_i: int, data: list[str]) -> bool:
    i = start_i
    start = 0
    end = 0
    animation_exists = 0
    working_visualisations_exists = 0
    graphics_set_line = 0
    main_leading_whitespace = re.match(r'^\s+', data[i+1])[0]
    replaced = False
    while True:
        line = data[i]
        start += line.count('{')
        end += line.count('}')
        if re.match('^' + main_leading_whitespace + 'animation[^{]*\{', line): animation_exists = i
        i += 1
        if start <= end and start > 0: break
    if animation_exists:
        replaced = True
        leading_whitespace = re.match(r'^\s+', data[animation_exists])[0]
        data.insert(animation_exists, leading_whitespace + 'graphics_set = {\n')
        j = animation_exists + 1
        while True:
            line = data[j]
            start += line.count('{')
            end += line.count('}')
            data[j] = '    ' + line
            j += 1
            if start <= end and start > 0: break
        data.insert(j, leading_whitespace + '},\n')
    i = start_i
    while True:
        line = data[i]
        start += line.count('{')
        end += line.count('}')
        if re.match('^' + main_leading_whitespace + 'working_visualisations[^{]*\{', line): working_visualisations_exists = i
        if re.match('^' + main_leading_whitespace + 'graphics_set[^{]*\{', line): graphics_set_line = i
        i += 1
        if start <= end and start > 0: break
    if working_visualisations_exists:
        replaced = True
        j = working_visualisations_exists
        while True:
            line = data[j]
            start += line.count('{')
            end += line.count('}')
            j += 1
            if start <= end and start > 0: break
        temp_data = []
        for x in range(working_visualisations_exists, j):
            temp_data.append(data.pop(working_visualisations_exists))
            temp_data[-1] = '    ' + temp_data[-1]
        out_data = data[:graphics_set_line+1].copy()
        out_data.extend(temp_data)
        out_data.extend(data[graphics_set_line+1:])
    else: out_data = data
    return replaced, out_data

for filename in glob('**/*.lua', recursive=True):
    breaking = False
    replaced = False
    with open(filename, 'r', encoding='utf-8') as file:
        data = file.readlines()
        for i, line in enumerate(data):
            if re.search('ENTITY ?\{[^\}]', line):
                try:
                    replaced, data = process_entity(i, data)
                except (NotImplementedError, AttributeError):
                    print(f'wrong entity definition in {filename} at line {i}')
                    breaking = True
    if replaced and not breaking:
        print(filename)
        with open(filename, 'w', encoding='utf-8') as file:
            for line in data:
                file.write(line)