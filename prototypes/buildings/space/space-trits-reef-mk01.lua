---WIP---
---REDO RECIPE---
RECIPE {
    type = "recipe",
    name = "space-trits-reef-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "titanium-plate",     amount = 100},
        {type = "item", name = "iron-plate",         amount = 150},
        {type = "item", name = "aluminium-plate",    amount = 50},
        {type = "item", name = "pump",               amount = 3},
        {type = "item", name = "glass",              amount = 200},
        {type = "item", name = "electronic-circuit", amount = 50},
    },
    results = {
        {type = "item", name = "space-trits-reef-mk01", amount = 1}
    }
}:add_unlock("trits")

ITEM {
    type = "item",
    name = "space-trits-reef-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/trits-reef-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "d",
    place_result = "space-trits-reef-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "space-trits-reef-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/trits-reef-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "space-trits-reef-mk01"},
    fast_replaceable_group = "trits-reef",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.8, -4.8}, {4.8, 4.8}},
    selection_box = {{-5.0, -5.0}, {5.0, 5.0}},
    module_slots = 1,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"trits"},
    crafting_speed = 0.02,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 1
        },
    },
    energy_usage = "500kW",
    graphics_set = {
        working_visualisations = {
            {
                north_position = util.by_pixel(-120, -174),
                west_position = util.by_pixel(-120, -174),
                south_position = util.by_pixel(-120, -174),
                east_position = util.by_pixel(-120, -174),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/trits-reef/a1.png",
                    frame_count = 179,
                    line_length = 30,
                    width = 64,
                    height = 320,
                    animation_speed = 0.3
                }
            },
            {
                north_position = util.by_pixel(-56, -174),
                west_position = util.by_pixel(-56, -174),
                south_position = util.by_pixel(-56, -174),
                east_position = util.by_pixel(-56, -174),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/trits-reef/a2.png",
                    frame_count = 179,
                    line_length = 30,
                    width = 64,
                    height = 320,
                    animation_speed = 0.3
                }
            },
            {
                north_position = util.by_pixel(8, -174),
                west_position = util.by_pixel(8, -174),
                south_position = util.by_pixel(8, -174),
                east_position = util.by_pixel(8, -174),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/trits-reef/a3.png",
                    frame_count = 179,
                    line_length = 30,
                    width = 64,
                    height = 320,
                    animation_speed = 0.3
                }
            },
            {
                north_position = util.by_pixel(72, -174),
                west_position = util.by_pixel(72, -174),
                south_position = util.by_pixel(72, -174),
                east_position = util.by_pixel(72, -174),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/trits-reef/a4.png",
                    frame_count = 179,
                    line_length = 30,
                    width = 64,
                    height = 320,
                    animation_speed = 0.3
                }
            },
            {
                north_position = util.by_pixel(136, -174),
                west_position = util.by_pixel(136, -174),
                south_position = util.by_pixel(136, -174),
                east_position = util.by_pixel(136, -174),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/trits-reef/a5.png",
                    frame_count = 179,
                    line_length = 30,
                    width = 64,
                    height = 320,
                    animation_speed = 0.3
                }
            },
            --OVER
            {
                north_position = util.by_pixel(32, -96),
                west_position = util.by_pixel(32, -96),
                south_position = util.by_pixel(32, -96),
                east_position = util.by_pixel(32, -96),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/trits-reef/over.png",
                    width = 384,
                    height = 512,
                    frame_count = 1,
                    line_length = 1,
                    --shift = util.by_pixel(32, -96),
                }
            },
        },
        animation = {
            layers = {
                {
                    filename = "__pyalienlifegraphics3__/graphics/entity/trits-reef/off.png",
                    width = 384,
                    height = 512,
                    frame_count = 1,
                    line_length = 1,
                    shift = util.by_pixel(32, -96)
                },
                {
                    filename = "__pyalienlifegraphics3__/graphics/entity/trits-reef/off-mask.png",
                    width = 384,
                    height = 512,
                    frame_count = 1,
                    line_length = 1,
                    shift = util.by_pixel(32, -96),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics3__/graphics/entity/trits-reef/over.png",
                    width = 384,
                    height = 512,
                    frame_count = 1,
                    line_length = 1,
                    shift = util.by_pixel(32, -96),
                },
            },
        },
    },

    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(true, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-1.5, 4.5}, direction = defines.direction.south}},
            secondary_draw_orders = {north = -1}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(true, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {1.5, 4.5}, direction = defines.direction.south}},
            secondary_draw_orders = {north = -1}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(true, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {-1.5, -4.5}, direction = defines.direction.north}},
            secondary_draw_orders = {north = -1}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(true, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {1.5, -4.5}, direction = defines.direction.north}},
            secondary_draw_orders = {north = -1}
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/trits-reef.ogg", volume = 1.0},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/trits-reef.ogg", volume = 0.3},
        apparent_volume = 0.45
    }
}
