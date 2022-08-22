local colorscheme = {
  name = "gruvmat-light",
  background = "light",
}

colorscheme.theme = {
  bg0 = "#fbf1c7",
  bg1 = "#f4e8be",
  bg2 = "#f2e5bc",
  bg3 = "#eee0b7",
  bg4 = "#e5d5ad",
  bg5 = "#ddccab",
  bg_statusline1 = "#f2e5bc",
  bg_statusline2 = "#f2e5bc",
  bg_statusline3 = "#e5d5ad",
  bg_diff_green = "#e6eabc",
  bg_visual_green = "#dee2b6",
  bg_diff_red = "#f9e0bb",
  bg_visual_red = "#f1d9b5",
  bg_diff_blue = "#e2e6c7",
  bg_visual_blue = "#dadec0",
  bg_visual_yellow = "#fae7b3",
  bg_current_word = "#f2e5bc",
}

require("aiko.colors").paint(colorscheme)