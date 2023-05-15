local colorscheme = require("aiko.theme.colorscheme").Scheme:new({
  name = "nightlamp",
  background = "dark",
})

colorscheme.theme = {
  base00 = "#18191f",
  base01 = "#222329",
  base02 = "#2c2d33",
  base03 = "#3c3d43",
  base04 = "#48494f",
  base05 = "#b8af9e",
  base06 = "#cbc0ab",
  base07 = "#e0d6bd",
  base08 = "#b8aad9",
  base09 = "#cd9672",
  base0A = "#ccb89c",
  base0B = "#8aa387",
  base0C = "#7aacaa",
  base0D = "#b58385",
  base0E = "#8e9cb4",
  base0F = "#90a0a0",
}

colorscheme.colors = {
  bg_1 = "#202127",
  bg_2 = "#27282e",
  bg_3 = "#2d2e34",
  bg_4 = "#33343a",
  bg_folder = "#90a0a0",
  bg_light = "#2b2c32",
  bg_pmenu = "#b58385",
  bg_statusline = "#1d1e24",
  black = "#18191f",
  blue = "#5a6986",
  cyan = "#90a0a0",
  dark_black = "#13141a",
  dark_purple = "#a99bca",
  green = "#8aa387",
  grey = "#3d3e44",
  light_green = "#94ad91",
  light_grey_1 = "#48494f",
  light_grey_2 = "#4d4e54",
  light_grey_3 = "#55565c",
  light_pink = "#d6b3bd",
  line = "#313238",
  nord_blue = "#8d9bb3",
  orange = "#cd9672",
  pink = "#c99aa7",
  purple = "#b8aad9",
  red = "#a67476",
  sun = "#deb88a",
  teal = "#7aacaa",
  white = "#e0d6bd",
  yellow = "#ccb89c",
}

colorscheme.polish = {}

require("aiko.theme").paint(colorscheme)
