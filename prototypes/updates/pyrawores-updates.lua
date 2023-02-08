--PY1 tweaks

--Chromium tweaks
RECIPE("richdust-separation"):remove_unlock("fluid-separation"):add_unlock("separation")
RECIPE("tailings-separation"):remove_unlock("fluid-separation"):add_unlock("separation")

--RECIPE("classifier"):remove_ingredient("intermetallics")

RECIPE("grade-1-chromite"):remove_unlock("chromium-mk01"):add_unlock("chromium-mk02")

RECIPE("tier-0-chromite-sand"):remove_unlock("chromium-mk01")