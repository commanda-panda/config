local colorscheme = require("aiko.theme.colorscheme").Scheme:new({
  name = "rxyhn",
  background = "dark",
})

colorscheme.theme = {
  base00 = "#061115",
  base01 = "#0c171b",
  base02 = "#101b1f",
  base03 = "#192428",
  base04 = "#212c30",
  base05 = "#d9d7d6",
  base06 = "#e3e1e0",
  base07 = "#edebea",
  base08 = "#f26e74",
  base09 = "#ecd28b",
  base0A = "#e9967e",
  base0B = "#82c29c",
  base0C = "#6791c9",
  base0D = "#79aaeb",
  base0E = "#c488ec",
  base0F = "#f16269",
}

colorscheme.colors = {
  bg_1 = "#0d181c",
  bg_2 = "#131e22",
  bg_3 = "#1c272b",
  bg_4 = "#242f33",
  bg_folder = "#6791c9",
  bg_light = "#1a2529",
  bg_pmenu = "#78b892",
  bg_statusline = "#0a1519",
  black = "#061115",
  blue = "#6791c9",
  cyan = "#67afc1",
  dark_black = "#000a0e",
  dark_purple = "#bc83e3",
  green = "#78b892",
  grey = "#313c40",
  light_green = "#8cd7aa",
  light_grey_1 = "#3b464a",
  light_grey_2 = "#455054",
  light_grey_3 = "#4f5a5e",
  light_pink = "#ee6a70",
  line = "#222d31",
  nord_blue = "#5a84bc",
  orange = "#e89982",
  pink = "#f16269",
  purple = "#c488ec",
  red = "#df5b61",
  sun = "#f6dc95",
  teal = "#7acfe4",
  white = "#d9d7d6",
  yellow = "#ecd28b",
}

colorscheme.polish = {}

require("aiko.theme").paint(colorscheme)
