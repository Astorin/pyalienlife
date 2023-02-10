return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'dingrits-pack-mk01',
        'dingrits-pack-mk02',
        'dingrits-pack-mk03',
        'dingrits-pack-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'dingrits-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-dingrits.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'dingrits-mk02'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1},
                -- {'py-science-pack-3', 1},
                {'chemical-science-pack', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'alpha',
            icon = '__pyalienlifegraphics3__/graphics/technology/alpha.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.0, speed = 0.15, productivity = -0.12, type = 'module-effects'}
            },
        },
        {
            name = 'c-mutation',
            icon = '__pyalienlifegraphics3__/graphics/technology/c-mutation.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = -0.1, speed = 0, productivity = -0.1, type = 'module-effects'}
            }
        },
        {
            name = 'training',
            icon = '__pyalienlifegraphics3__/graphics/technology/training.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe'
                {consumption = 0.25, speed = 0, productivity = 0.2, type = 'module-effects'}
            }
        }
    },
    module_category = 'dingrits'
}