local colorscheme = require("aiko.theme.colorscheme").Scheme:new({
  name = "gruvchad",
  background = "dark",
})

colorscheme.theme = {
  base00 = "#1e2122",
  base01 = "#2c2f30",
  base02 = "#36393a",
  base03 = "#404344",
  base04 = "#d4be98",
  base05 = "#c0b196",
  base06 = "#c3b499",
  base07 = "#c7b89d",
  base08 = "#ec6b64",
  base09 = "#e78a4e",
  base0A = "#e0c080",
  base0B = "#a9b665",
  base0C = "#86b17f",
  base0D = "#7daea3",
  base0E = "#d3869b",
  base0F = "#d65d0e",
}

colorscheme.colors = {
  bg_1 = "#242728",
  bg_2 = "#282b2c",
  bg_3 = "#393c3d",
  bg_4 = "#404344",
  bg_folder = "#6d8dad",
  bg_light = "#2d3031",
  bg_pmenu = "#89b482",
  bg_statusline = "#222526",
  black = "#1e2122",
  blue = "#6d8dad",
  cyan = "#82b3a8",
  dark_black = "#1a1d1e",
  dark_purple = "#887aa9",
  green = "#89b482",
  grey = "#484b4c",
  light_green = "#a9b665",
  light_grey_1 = "#575a5b",
  light_grey_2 = "#545758",
  light_grey_3 = "#606364",
  light_pink = "#ce8196",
  line = "#323536",
  nord_blue = "#6f8faf",
  orange = "#e78a4e",
  pink = "#ff75a0",
  purple = "#9385b4",
  red = "#ec6b64",
  sun = "#d1b171",
  teal = "#749689",
  white = "#c7b89d",
  yellow = "#d6b676",
}

colorscheme.polish = {}

require("aiko.theme").paint(colorscheme)
