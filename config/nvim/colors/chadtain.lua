local colorscheme = require("aiko.theme.colorscheme").Scheme:new({
  name = "chadtain",
  background = "dark",
})

colorscheme.theme = {
  base00 = "#1a2026",
  base01 = "#242a30",
  base02 = "#292f35",
  base03 = "#2e343a",
  base04 = "#42484e",
  base05 = "#bebebe",
  base06 = "#bbbbbb",
  base07 = "#b0b0b0",
  base08 = "#ac8a8c",
  base09 = "#c9938a",
  base0A = "#aca98a",
  base0B = "#8aac8b",
  base0C = "#8aabac",
  base0D = "#7797b7",
  base0E = "#948fb1",
  base0F = "#ac8a8c",
}

colorscheme.colors = {
  bg_1 = "#20262c",
  bg_2 = "#242a30",
  bg_3 = "#292f35",
  bg_4 = "#2e343a",
  bg_folder = "#6b8bab",
  bg_light = "#2d3339",
  bg_pmenu = "#8aac8b",
  bg_statusline = "#1e242a",
  black = "#1a2026",
  blue = "#6b8bab",
  cyan = "#9aafe6",
  dark_black = "#151b21",
  dark_purple = "#8f8aac",
  green = "#8aac8b",
  grey = "#42484e",
  light_green = "#9ec49f",
  light_grey_1 = "#474d53",
  light_grey_2 = "#50565c",
  light_grey_3 = "#565c62",
  light_pink = "#de878f",
  line = "#2d3339",
  nord_blue = "#7797b7",
  orange = "#c9938a",
  pink = "#e89199",
  purple = "#a39ec4",
  red = "#ac8a8c",
  sun = "#aca98a",
  teal = "#7c9cbc",
  white = "#b0b0b0",
  yellow = "#c4c19e",
}

colorscheme.polish = {}

require("aiko.theme").paint(colorscheme)
