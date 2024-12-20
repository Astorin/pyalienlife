--------------------------SEA WEED-----------------------
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings.seaweed = {}

data:extend {
    {
        type = "tree",
        name = "seaweed",
        icon = "__pyalienlifegraphics__/graphics/icons/seaweed.png",
        icon_size = 64,
        flags = {"placeable-neutral", "not-on-map"},
        minable = {mining_time = 0.4, result = "seaweed", count = 2},
        max_health = 20,
        subgroup = "creatures",
        order = "b-a",
        collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
        selection_box = {{-0.5, -0.3}, {0.5, 0.3}},
        collision_mask = {layers = {ground_tile = true}, colliding_with_tiles_only = true},
        pictures = {
            {
                filename = "__pyalienlifegraphics2__/graphics/icons/seaweed-water-01.png",
                priority = "extra-high",
                blend_mode = "additive-soft",
                width = 32,
                height = 32
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/icons/seaweed-water-02.png",
                priority = "extra-high",
                blend_mode = "additive-soft",
                width = 32,
                height = 32
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/icons/seaweed-water-02.png",
                priority = "extra-high",
                blend_mode = "additive-soft",
                width = 32,
                height = 32
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/icons/seaweed-water-02.png",
                priority = "extra-high",
                blend_mode = "additive-soft",
                width = 32,
                height = 32
            }
        },
        autoplace = {
            probability_expression = 0.004,
            order = "seaweed"
        },
        protected_from_tile_building = false
    }
}
