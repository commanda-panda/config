local colorscheme = require("user.ui.theme").Theme:new({
  name = "pastelbeans",
  background = "dark",
})

colorscheme.theme = {
  base00 = "#151515",
  base01 = "#202020",
  base02 = "#303030",
  base03 = "#505050",
  base04 = "#b0b0b0",
  base05 = "#d0d0d0",
  base06 = "#e0e0e0",
  base07 = "#f5f5f5",
  base08 = "#ffdab9",
  base09 = "#ffeb99",
  base0A = "#ebbbff",
  base0B = "#d1f1a9",
  base0C = "#c0e9ff",
  base0D = "#bbdaff",
  base0E = "#ff9da4",
  base0F = "#888888",
}

colorscheme.colors = {
  bg_1 = "#1c1c1c",
  bg_2 = "#252525",
  bg_3 = "#2e2e2e",
  bg_4 = "#3a3a3a",
  bg_folder = "#bbdaff",
  bg_light = "#2c2c2c",
  bg_pmenu = "#ff9da4",
  bg_statusline = "#191919",
  black = "#151515",
  blue = "#bbdaff",
  cyan = "#bbffff",
  dark_black = "#101010",
  dark_purple = "#e58fe5",
  green = "#d1f1a9",
  grey = "#424242",
  light_green = "#c2cea6",
  light_grey_1 = "#474747",
  light_grey_2 = "#4c4c4c",
  light_grey_3 = "#525252",
  light_pink = "#ffd3f3",
  line = "#2d2d2d",
  nord_blue = "#bbdaff",
  orange = "#ffb964",
  pink = "#f0a0c0",
  purple = "#ebbbff",
  red = "#ff9da4",
  sun = "#ffb964",
  teal = "#668799",
  white = "#e8e8d3",
  yellow = "#f5d595",
}

require("user.ui.theme").paint(colorscheme)
