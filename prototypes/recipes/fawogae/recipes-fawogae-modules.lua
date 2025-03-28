--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = "recipe",
    name = "fawogae-mk02",
    category = "fawogae",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "fawogae",       amount = 2},
        {type = "item",  name = "fawogae-spore", amount = 10},
        {type = "fluid", name = "hydrogen",      amount = 300},
        {type = "item",  name = "fertilizer",    amount = 10},
        {type = "item",  name = "soil",          amount = 100},
        {type = "fluid", name = "water",         amount = 1000},
    },
    results = {
        {type = "item", name = "fawogae-mk02", amount = 1, probability = 0.005},
        {type = "item", name = "fawogae",      amount = 1, probability = 0.5,  ignored_by_productivity = 1},
        --{type = 'item', name = 'barrel', amount = 7},
    },
    main_product = "fawogae-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png",           icon_size = 64},
        {icon = "__pycoalprocessinggraphics__/graphics/icons/fawogae-icon.png", icon_size = 32, scale = 0.7},
    },
    icon_size = 64,
    subgroup = "py-alienlife-fawogae",
    order = "za"
}:add_unlock("fawogae-mk02")

RECIPE {
    type = "recipe",
    name = "fawogae-mk02-breeder",
    category = "fawogae",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "fawogae-spore-mk02", amount = 10},
        {type = "fluid", name = "hydrogen",           amount = 300},
        {type = "item",  name = "fertilizer",         amount = 2},
        {type = "item",  name = "biomass",            amount = 20},
        {type = "fluid", name = "water",              amount = 750},
    },
    results = {
        {type = "item", name = "fawogae-mk02", amount = 2,},
        {type = "item", name = "fawogae-mk02", amount = 1, probability = 0.5},
    },
    main_product = "fawogae-mk02",
    icons =
    {
        {icon = "__pycoalprocessinggraphics__/graphics/icons/fawogae-icon.png", icon_size = 32},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png",         icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-fawogae",
    order = "za"
}:add_unlock("fawogae-mk02")

--mk03--
--WIP--

RECIPE {
    type = "recipe",
    name = "fawogae-mk03",
    category = "fawogae",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "fawogae-mk02",    amount = 2},
        {type = "item",  name = "alien-sample-03", amount = 1},
        {type = "item",  name = "fawogae-spore",   amount = 10},
        {type = "fluid", name = "hydrogen",        amount = 300},
        {type = "item",  name = "fertilizer",      amount = 10},
        {type = "item",  name = "soil",            amount = 100},
        {type = "fluid", name = "water",           amount = 1000},
    },
    results = {
        {type = "item", name = "fawogae-mk03", amount = 1, probability = 0.004},
        {type = "item", name = "fawogae",      amount = 1, probability = 0.6},
        --{type = 'item', name = 'barrel', amount = 7},
    },
    main_product = "fawogae-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png",           icon_size = 64},
        {icon = "__pycoalprocessinggraphics__/graphics/icons/fawogae-icon.png", icon_size = 32, scale = 0.7},
    },
    icon_size = 64,
    subgroup = "py-alienlife-fawogae",
    order = "zb"
}:add_unlock("fawogae-mk03")

RECIPE {
    type = "recipe",
    name = "fawogae-mk03-breeder",
    category = "fawogae",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "alien-sample-03",    amount = 1},
        {type = "item",  name = "fawogae-spore-mk03", amount = 10},
        {type = "fluid", name = "hydrogen",           amount = 300},
        {type = "item",  name = "fertilizer",         amount = 5},
        {type = "item",  name = "fe-biomass",         amount = 10},
        {type = "item",  name = "al-biomass",         amount = 10},
        {type = "fluid", name = "blood",              amount = 100},
    },
    results = {
        {type = "item", name = "fawogae-mk03", amount = 2,},
        {type = "item", name = "fawogae-mk03", amount = 1, probability = 0.5},
    },
    main_product = "fawogae-mk03",
    icons =
    {
        {icon = "__pycoalprocessinggraphics__/graphics/icons/fawogae-icon.png", icon_size = 32},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png",         icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-fawogae",
    order = "zb"
}:add_unlock("fawogae-mk03")

--mk04--
--WIP--

RECIPE {
    type = "recipe",
    name = "fawogae-mk04",
    category = "fawogae",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "fawogae-mk03",         amount = 2},
        {type = "item",  name = "zinc-finger-proteins", amount = 1},
        {type = "item",  name = "fawogae-spore",        amount = 10},
        {type = "fluid", name = "hydrogen",             amount = 300},
        {type = "item",  name = "fertilizer",           amount = 10},
        {type = "item",  name = "soil",                 amount = 100},
        {type = "fluid", name = "water",                amount = 1000},
    },
    results = {
        {type = "item", name = "fawogae-mk04", amount = 1, probability = 0.003},
        {type = "item", name = "fawogae",      amount = 1, probability = 0.7},
        --{type = 'item', name = 'barrel', amount = 7},
    },
    main_product = "fawogae-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png",           icon_size = 64},
        {icon = "__pycoalprocessinggraphics__/graphics/icons/fawogae-icon.png", icon_size = 32, scale = 0.7},
    },
    icon_size = 64,
    subgroup = "py-alienlife-fawogae",
    order = "zc"
}:add_unlock("fawogae-mk04")

RECIPE {
    type = "recipe",
    name = "fawogae-mk04-breeder",
    category = "fawogae",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "zinc-finger-proteins", amount = 1},
        {type = "item",  name = "fawogae-spore-mk04",   amount = 10},
        {type = "fluid", name = "hydrogen",             amount = 300},
        {type = "item",  name = "fertilizer",           amount = 10},
        {type = "item",  name = "co-biomass",           amount = 20},
        {type = "item",  name = "ti-biomass",           amount = 20},
        {type = "fluid", name = "arthropod-blood",      amount = 150},
    },
    results = {
        {type = "item", name = "fawogae-mk04", amount = 2},
        {type = "item", name = "fawogae-mk04", amount = 1, probability = 0.5},
    },
    main_product = "fawogae-mk04",
    icons =
    {
        {icon = "__pycoalprocessinggraphics__/graphics/icons/fawogae-icon.png", icon_size = 32},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png",         icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-fawogae",
    order = "zc"
}:add_unlock("fawogae-mk04")
