RECIPE("soot-to-copper"):remove_unlock("oil-sands"):set_fields{enabled = true}

RECIPE("bitumen-to-sulfur"):replace_unlock("oil-sands", "bitumen-processing")
RECIPE("bitumen-to-heavy-oil"):replace_unlock("oil-sands", "bitumen-processing")
RECIPE("quenching-dirty-syngas"):replace_unlock("oil-sands", "bitumen-processing")
RECIPE("bitumen-refining"):replace_unlock("oil-sands", "bitumen-processing")
RECIPE("bitumen-gasification"):replace_unlock("oil-sands", "bitumen-processing")
RECIPE("hot-syngas-cooldown"):replace_unlock("oil-sands", "bitumen-processing")
RECIPE("bitumen-to-nickel"):replace_unlock("oil-sands", "bitumen-processing")
RECIPE("bitumen-to-nitrogen"):replace_unlock("oil-sands", "bitumen-processing")
RECIPE("scrubbing-purified-syngas"):replace_unlock("oil-sands", "bitumen-processing")

--RECIPE("tar-quenching"):remove_unlock("nexelit-mk01"):set_fields{enabled = true}
