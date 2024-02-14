# alterae's Chunk Power Grid

A mod which adjusts the maximum wire distance of big power poles (and optionally the supply area of substations) to better align with the chunk grid.

## API Reference

(All items are namespaced under `alterae:chunk-power`.)

### Settings

Startup settings: (All items are namespaced under `settings:startup`.)

- `big-electric-pole:maximum-wire-distance` :: [ 30 | 32 | 32.25 ] — Modifies the [maximum wire distance](https://lua-api.factorio.com/latest/prototypes/ElectricPolePrototype.html#maximum_wire_distance) of the
[big electric pole](https://wiki.factorio.com/Big_electric_pole) entity.
- `substation:supply-area-distance` :: [ 8 | 9 ] — Modifies the [supply area distance](https://lua-api.factorio.com/latest/prototypes/ElectricPolePrototype.html#supply_area_distance) of the [substation](https://wiki.factorio.com/Substation) entity.
