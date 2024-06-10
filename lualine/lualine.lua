local colors = {
  black        = '#202020',
  neon         = '#DFFF00',
  white        = '#FFFFFF',
  green        = '#00D700',
  purple       = '#5F005F',
  blue         = '#00DFFF',
  darkblue     = '#00005F',
  navyblue     = '#000080',
  brightgreen  = '#9CFFD3',
  gray         = '#444444',
  darkgray     = '#3c3836',
  lightgray    = '#504945',
  inactivegray = '#7c6f64',
  orange       = '#FFAF00',
  red          = '#5F0000',
  brightorange = '#C08A20',
  brightred    = '#AF0000',
  cyan         = '#00DFFF',
}

local badwolf = {
  normal = {
    a = { bg = colors.neon, fg = colors.black, gui = 'bold' },
    b = { bg = colors.gray, fg = colors.white },
    c = { bg = colors.black, fg = colors.brightgreen },
  },
  insert = {
    a = { bg = colors.blue, fg = colors.darkblue, gui = 'bold' },
    b = { bg = colors.darkgray, fg = colors.white },
    c = { bg = colors.black, fg = colors.white },
  },
  visual = {
    a = { bg = colors.orange, fg = colors.black, gui = 'bold' },
    b = { bg = colors.darkgray, fg = colors.white },
    c = { bg = colors.red, fg = colors.white },
  },
  replace = {
    a = { bg = colors.brightred, fg = colors.white, gui = 'bold' },
    b = { bg = colors.cyan, fg = colors.darkblue },
    c = { bg = colors.navyblue, fg = colors.white },
  },
  command = {
    a = { bg = colors.green, fg = colors.black, gui = 'bold' },
    b = { bg = colors.darkgray, fg = colors.white },
    c = { bg = colors.black, fg = colors.brightgreen },
  },
  inactive = {
    a = { bg = colors.darkgray, fg = colors.gray, gui = 'bold' },
    b = { bg = colors.darkgray, fg = colors.gray },
    c = { bg = colors.darkgray, fg = colors.gray },
  },
}

badwolf.terminal = badwolf.insert

require('lualine').setup {
  options = { theme = badwolf },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {
      'branch',
      'diff',
      {
        'diagnostics',
        source={'nvim_diagnostic'},
        symbols = {error = " ", warn = " ", info = " "},
      }
    },
    lualine_c = {},
    lualine_x = {
      'encoding',
      { 'filename', path=1, shorting_target=25 },
      'filetype'
    },
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  winbar = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {
    lualine_a = {
      {
        'buffers',
        mode = 4,
        symbols = {
          modified = ' ●',      -- Text to show when the buffer is modified
          alternate_file = '#', -- Text to show to identify the alternate file
          directory =  '',     -- Text to show when the buffer is a directory
        },
      }
    },
    lualine_b = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  extensions = { 'fzf', 'fugitive' }
}
