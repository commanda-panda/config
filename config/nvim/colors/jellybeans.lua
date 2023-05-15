local colorscheme = require("aiko.theme.colorscheme").Scheme:new({
  name = "jellybeans",
  background = "dark",
})

colorscheme.theme = {
  base00 = "#151515",
  base01 = "#2e2e2e",
  base02 = "#3a3a3a",
  base03 = "#424242",
  base04 = "#474747",
  base05 = "#d9d9c4",
  base06 = "#dedec9",
  base07 = "#f1f1e5",
  base08 = "#c6b5da",
  base09 = "#c99f4a",
  base0A = "#e1b655",
  base0B = "#99ad6a",
  base0C = "#99ad6a",
  base0D = "#8fa5cd",
  base0E = "#e18be1",
  base0F = "#cf6a4c",
}

colorscheme.colors = {
  bg_1 = "#1c1c1c",
  bg_2 = "#252525",
  bg_3 = "#2e2e2e",
  bg_4 = "#3a3a3a",
  bg_folder = "#8197bf",
  bg_light = "#2c2c2c",
  bg_pmenu = "#8197bf",
  bg_statusline = "#191919",
  black = "#151515",
  blue = "#8197bf",
  cyan = "#8fbfdc",
  dark_black = "#101010",
  dark_purple = "#e58fe5",
  green = "#99ad6a",
  grey = "#424242",
  light_green = "#c2cea6",
  light_grey_1 = "#474747",
  light_grey_2 = "#4c4c4c",
  light_grey_3 = "#525252",
  light_pink = "#da7557",
  line = "#2d2d2d",
  nord_blue = "#768cb4",
  orange = "#e78a4e",
  pink = "#f0a0c0",
  purple = "#ea94ea",
  red = "#cf6a4c",
  sun = "#ffb964",
  teal = "#668799",
  white = "#e8e8d3",
  yellow = "#fad07a",
}

colorscheme.polish = {}

require("aiko.theme").paint(colorscheme)
