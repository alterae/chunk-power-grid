import * as factorio from "factorio:settings";
import root from "./lib/namespace";

const prefix = root + "settings:startup:";

data.extend<factorio.DoubleSettingDefinition>([
  {
    name: `${prefix}big-electric-pole:maximum-wire-distance`,
    type: "double-setting",
    setting_type: "startup",

    default_value: 32.25,
    allowed_values: [
      30, // Vanilla
      32, // One chunk
      32.25, // One chunk + wiggle room
    ],
  },
  {
    name: `${prefix}substation:supply-area-distance`,
    type: "double-setting",
    setting_type: "startup",

    default_value: 9,
    allowed_values: [
      8, // 16x16 supply area (1/4 chunk)
      9, // Vanilla
    ],
  },
]);
