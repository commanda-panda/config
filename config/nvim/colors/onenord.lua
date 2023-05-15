local colorscheme = require("aiko.theme.colorscheme").Scheme:new({
  name = "onenord",
  background = "dark",
})

colorscheme.theme = {
  base00 = "#2a303c",
  base01 = "#3b4252",
  base02 = "#434c5e",
  base03 = "#4c566a",
  base04 = "#566074",
  base05 = "#bfc5d0",
  base06 = "#c7cdd8",
  base07 = "#ced4df",
  base08 = "#d57780",
  base09 = "#e39a83",
  base0A = "#ebcb8b",
  base0B = "#a3be8c",
  base0C = "#97b7d7",
  base0D = "#81a1c1",
  base0E = "#b48ead",
  base0F = "#d57780",
}

colorscheme.colors = {
  bg_1 = "#2f3541",
  bg_2 = "#343a46",
  bg_3 = "#3e4450",
  bg_4 = "#484e5a",
  bg_folder = "#7797b7",
  bg_light = "#3f4551",
  bg_pmenu = "#a3be8c",
  bg_statusline = "#333945",
  black = "#2a303c",
  blue = "#7797b7",
  cyan = "#9aafe6",
  dark_black = "#252b37",
  dark_purple = "#b48ead",
  green = "#a3be8c",
  grey = "#4d535f",
  light_green = "#afca98",
  light_grey_1 = "#545a66",
  light_grey_2 = "#595f6b",
  light_grey_3 = "#606672",
  light_pink = "#de878f",
  line = "#414753",
  nord_blue = "#81a1c1",
  orange = "#e39a83",
  pink = "#da838b",
  purple = "#aab1be",
  red = "#d57780",
  sun = "#e1c181",
  teal = "#6484a4",
  white = "#d8dee9",
  yellow = "#ebcb8b",
}

colorscheme.polish = {}

require("aiko.theme").paint(colorscheme)
