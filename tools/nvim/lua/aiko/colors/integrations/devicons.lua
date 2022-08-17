local M = {}

M.palette = function(theme, colors)
  return {
    DevIconDefault = { fg = colors.red },
    DevIconc = { fg = colors.blue },
    DevIconcss = { fg = colors.blue },
    DevIcondeb = { fg = colors.cyan },
    DevIconDockerfile = { fg = colors.cyan },
    DevIconhtml = { fg = colors.baby_pink },
    DevIconjpeg = { fg = colors.dark_purple },
    DevIconjpg = { fg = colors.dark_purple },
    DevIconjs = { fg = colors.sun },
    DevIconkt = { fg = colors.orange },
    DevIconlock = { fg = colors.red },
    DevIconlua = { fg = colors.blue },
    DevIconmp3 = { fg = colors.white },
    DevIconmp4 = { fg = colors.white },
    DevIconout = { fg = colors.white },
    DevIconpng = { fg = colors.dark_purple },
    DevIconpy = { fg = colors.cyan },
    DevIcontoml = { fg = colors.blue },
    DevIconts = { fg = colors.teal },
    DevIconttf = { fg = colors.white },
    DevIconrb = { fg = colors.pink },
    DevIconrpm = { fg = colors.orange },
    DevIconvue = { fg = colors.vibrant_green },
    DevIconwoff = { fg = colors.white },
    DevIconwoff2 = { fg = colors.white },
    DevIconxz = { fg = colors.sun },
    DevIconzip = { fg = colors.sun },
    DevIconZig = { fg = colors.orange },
  }
end

return M
