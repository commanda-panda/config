local colorscheme = require("aiko.theme.colorscheme").Scheme:new({
  name = "tokyodark",
  background = "dark",
})

colorscheme.theme = {
  base00 = "#11121d",
  base01 = "#1b1c27",
  base02 = "#21222d",
  base03 = "#282934",
  base04 = "#30313c",
  base05 = "#abb2bf",
  base06 = "#b2b9c6",
  base07 = "#a0a8cd",
  base08 = "#ee6d85",
  base09 = "#7199ee",
  base0A = "#7199ee",
  base0B = "#dfae67",
  base0C = "#a485dd",
  base0D = "#95c561",
  base0E = "#a485dd",
  base0F = "#f3627a",
}

colorscheme.colors = {
  bg_1 = "#171823",
  bg_2 = "#1d1e29",
  bg_3 = "#252631",
  bg_4 = "#252631",
  bg_folder = "#7199ee",
  bg_light = "#2a2b36",
  bg_pmenu = "#ee6d85",
  bg_statusline = "#161722",
  black = "#11121d",
  blue = "#7199ee",
  cyan = "#38a89d",
  dark_black = "#0c0d18",
  dark_purple = "#9071c9",
  green = "#98c379",
  grey = "#474853",
  light_green = "#95c561",
  light_grey_1 = "#474853",
  light_grey_2 = "#4e4f5a",
  light_grey_3 = "#545560",
  light_pink = "#fd7c94",
  line = "#252631",
  nord_blue = "#648ce1",
  orange = "#f6955b",
  pink = "#fe6d85",
  purple = "#a485dd",
  red = "#ee6d85",
  sun = "#dfae67",
  teal = "#519aba",
  white = "#a0a8cd",
  yellow = "#d7a65f",
}

colorscheme.polish = {}

require("aiko.theme").paint(colorscheme)
