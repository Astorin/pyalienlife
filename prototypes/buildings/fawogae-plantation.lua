local MODULE_SLOTS = 10
local FULL_CRAFTING_SPEED = 1 -- crafting speed when full of mk01 modules

ITEM('fawogae-plantation-mk01'):subgroup_order('py-alienlife-farm-buildings-mk01', 'd')
ITEM('fawogae-plantation-mk02'):subgroup_order('py-alienlife-farm-buildings-mk02', 'd')
ITEM('fawogae-plantation-mk03'):subgroup_order('py-alienlife-farm-buildings-mk03', 'd')
ITEM('fawogae-plantation-mk04'):subgroup_order('py-alienlife-farm-buildings-mk04', 'd')

RECIPE {
    type = 'recipe',
    name = 'fawogae-plantation-mk01',
    energy_required = 1,
    enabled = false,
    ingredients = {
        {'soil',               100},
        {'pipe',               10},
        {'electronic-circuit', 10},
        {'copper-cable',       25},
        {'iron-plate',         20},
        {'wood',               100}
    },
    results = {
        {'fawogae-plantation-mk01', 1}
    }
}:add_unlock('fawogae-mk01')

data.raw['assembling-machine']['fawogae-plantation-mk01'].crafting_speed = py.farm_speed(MODULE_SLOTS * 1, FULL_CRAFTING_SPEED)
data.raw['assembling-machine']['fawogae-plantation-mk01'].module_specification = {module_slots = MODULE_SLOTS * 1}

RECIPE('fawogae-plantation-mk02'):add_unlock('mycology-mk03')
data.raw['assembling-machine']['fawogae-plantation-mk02'].crafting_speed = py.farm_speed_derived(MODULE_SLOTS * 2, 'fawogae-plantation-mk01')
data.raw['assembling-machine']['fawogae-plantation-mk02'].module_specification = {module_slots = MODULE_SLOTS * 2}

RECIPE('fawogae-plantation-mk03'):add_unlock('mycology-mk04')
data.raw['assembling-machine']['fawogae-plantation-mk03'].crafting_speed = py.farm_speed_derived(MODULE_SLOTS * 3, 'fawogae-plantation-mk02')
data.raw['assembling-machine']['fawogae-plantation-mk03'].module_specification = {module_slots = MODULE_SLOTS * 3}

RECIPE('fawogae-plantation-mk04'):add_unlock('mycology-mk05')
data.raw['assembling-machine']['fawogae-plantation-mk04'].crafting_speed = py.farm_speed_derived(MODULE_SLOTS * 4, 'fawogae-plantation-mk03')
data.raw['assembling-machine']['fawogae-plantation-mk04'].module_specification = {module_slots = MODULE_SLOTS * 4}
