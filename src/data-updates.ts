import * as factorio from "factorio:prototype";
import prefix from "./lib/namespace";

const settings_prefix = prefix + "settings:startup:";

const maximum_wire_distance = settings.startup[
  `${settings_prefix}big-electric-pole:maximum-wire-distance`
].value as factorio.double;

data.raw["electric-pole"]["big-electric-pole"].maximum_wire_distance =
  maximum_wire_distance;

const supply_area_distace = settings.startup[
  `${settings_prefix}substation:supply-area-distance`
].value as factorio.double;

data.raw["electric-pole"]["substation"].supply_area_distance =
  supply_area_distace;
