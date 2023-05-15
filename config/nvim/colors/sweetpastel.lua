local colorscheme = require("aiko.theme.colorscheme").Scheme:new({
  name = "sweetpastel",
  background = "dark",
})

colorscheme.theme = {
  base00 = "#1b1f23",
  base01 = "#25292d",
  base02 = "#2f3337",
  base03 = "#393d41",
  base04 = "#43474b",
  base05 = "#fde5e6",
  base06 = "#dee2e6",
  base07 = "#f8f9fa",
  base08 = "#e5a3a1",
  base09 = "#f1c192",
  base0A = "#ece3b1",
  base0B = "#b4e3ad",
  base0C = "#f8b3cc",
  base0D = "#a3cbe7",
  base0E = "#ceace8",
  base0F = "#e5a3a1",
}

colorscheme.colors = {
  bg_1 = "#22262a",
  bg_2 = "#25292d",
  bg_3 = "#2f3337",
  bg_4 = "#393d41",
  bg_folder = "#a3cbe7",
  bg_light = "#2f3337",
  bg_pmenu = "#f8b3cc",
  bg_statusline = "#22262a",
  black = "#1b1f23",
  blue = "#a3cbe7",
  cyan = "#c9d4ff",
  dark_black = "#161a1e",
  dark_purple = "#b1a8fb",
  green = "#b4e3ad",
  grey = "#43474b",
  light_green = "#9edabe",
  light_grey_1 = "#4b4f53",
  light_grey_2 = "#54585c",
  light_grey_3 = "#5d6165",
  light_pink = "#ffc0eb",
  line = "#343a40",
  nord_blue = "#b0ceef",
  orange = "#f1c192",
  pink = "#f8b3cc",
  purple = "#ceace8",
  red = "#e5a3a1",
  sun = "#e7da84",
  teal = "#94d2cf",
  white = "#ffdede",
  yellow = "#ece3b1",
}

colorscheme.polish = {}

require("aiko.theme").paint(colorscheme)
