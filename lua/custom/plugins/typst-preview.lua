return {
  'chomosuke/typst-preview.nvim',
  -- lazy = false, -- or ft = 'typst'
  ft = 'typst',
  version = '1.*',
  build = function()
    require('typst-preview').update()
  end,
  config = function()
    require('typst-preview').setup {
      get_root = function()
        return '/Users/bojohnson/'
      end,
    }
  end,
}
