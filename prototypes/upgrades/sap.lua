local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data and not yafc_turd_integration then
    data:extend{{
        type = 'recipe',
        name = 'ash-sap',
        energy_required = 80,
        enabled = false,
        category = 'fts-reactor',
        ingredients = {
            {type = 'item', name = 'saps', amount = 60},
            {type = 'fluid', name = 'water', amount = 2000},
            {type = 'fluid', name = 'tall-oil', amount = 250},
        },
        results = {
            {type = 'item', name = 'ash', amount = 200},
            {type = 'fluid', name = 'tar', amount = 160},
            {type = 'fluid', name = 'black-liquor', amount = 20},
            {type = 'fluid', name = 'steam', amount = 2000, temperature = 150},
        },
        main_product = 'ash',
        icon = '__pyalienlifegraphics3__/graphics/icons/sap-to-ash.png',
        icon_size = 64
    }}

    for i, machine_recipe in pairs({
        table.deepcopy(data.raw.recipe['fts-reactor']),
        table.deepcopy(data.raw.recipe['fts-reactor-mk02']),
        table.deepcopy(data.raw.recipe['fts-reactor-mk03']),
        table.deepcopy(data.raw.recipe['fts-reactor-mk04']),
    }) do
        machine_recipe.name = machine_recipe.name .. '-with-centrifuge'
        FUN.add_ingredient(machine_recipe, {name = 'centrifuge-mk0' .. i, amount = 1, type = 'item'})
        data:extend{machine_recipe}
    end

    data:extend{{
        type = 'recipe',
        name = 'nano-cellulose-sap',
        energy_required = 45,
        enabled = false,
        category = 'sap',
        ingredients = {
            {type = 'item', name = 'bhoddos', amount = 1},
            {type = 'fluid', name = 'dirty-water-heavy', amount = 30},
            {type = 'item', name = 'stack-filter-inserter', amount = 1},
        },
        results = {
            {type = 'item', name = 'resveratrol', amount_min = 1, amount_max = 3},
            {type = 'item', name = 'stack-filter-inserter', amount = 1, probability = 0.999},
        },
        main_product = 'resveratrol'
    }}

    for i = 1, 4 do
        data:extend{{
            type = 'recipe',
            name = 'sap-tree-mulch-mk0' .. i,
            energy_required = 20,
            enabled = false,
            category = 'wpu',
            ingredients = {
                i == 1 and {'sap-tree', 1} or {'sap-tree-mk0' .. i, 1}
            },
            results = i == 1 and {
                {type = 'item', name = 'saps', amount_min = 25, amount_max = 30},
                {type = 'item', name = 'sap-seeds', amount = 1},
                {'biomass', 2}
            } or {
                {type = 'item', name = 'saps', amount_min = 26 * i, amount_max = 31 * i},
                {type = 'item', name = 'saps-mk0' .. i, amount_min = 5, amount_max = 10},
                {type = 'item', name = 'sap-seeds-mk0' .. i, amount = 2},
                {'fertilizer', 9},
                {'biomass', 4}
            },
            icons = {
                {icon = '__pyalienlifegraphics__/graphics/icons/over-mk0'..i..'.png'},
                {icon = '__pyalienlifegraphics3__/graphics/icons/chainsaw.png'},
            },
            icon_size = 64,
            main_product = 'saps'
        }}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'sap-extractor-mk01',
        'sap-extractor-mk02',
        'sap-extractor-mk03',
        'sap-extractor-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'sap-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-sap.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'sap-mk03'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'py-science-pack-1', 1},
                {'logistic-science-pack', 1},
                {'py-science-pack-2', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'inoculator',
            icon = '__pyalienlifegraphics3__/graphics/technology/inoculator.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {recipe = 'ash-sap', type = 'unlock-recipe'},
                {old = 'fts-reactor', new = 'fts-reactor-with-centrifuge', type = 'recipe-replacement'},
                {old = 'fts-reactor-mk02', new = 'fts-reactor-mk02-with-centrifuge', type = 'recipe-replacement'},
                {old = 'fts-reactor-mk03', new = 'fts-reactor-mk03-with-centrifuge', type = 'recipe-replacement'},
                {old = 'fts-reactor-mk04', new = 'fts-reactor-mk04-with-centrifuge', type = 'recipe-replacement'},
            },
        },
        {
            name = 'patch',
            icon = '__pyalienlifegraphics3__/graphics/technology/patch.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {recipe = 'nano-cellulose-sap', type = 'unlock-recipe'},
            }
        },
        {
            name = 'bark',
            icon = '__pyalienlifegraphics3__/graphics/technology/bark.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {recipe = 'sap-tree-mulch-mk01', type = 'unlock-recipe'},
                {recipe = 'sap-tree-mulch-mk02', type = 'unlock-recipe'},
                {recipe = 'sap-tree-mulch-mk03', type = 'unlock-recipe'},
                {recipe = 'sap-tree-mulch-mk04', type = 'unlock-recipe'},
            }
        }
    },
    module_category = 'sap'
}