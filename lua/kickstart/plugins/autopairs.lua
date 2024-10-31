-- autopairs
-- https://github.com/windwp/nvim-autopairs

return {
  -- 'windwp/nvim-autopairs',
  -- event = 'InsertEnter',
  -- -- Optional dependency
  -- dependencies = { 'hrsh7th/nvim-cmp' },
  -- config = function()
  --   require('nvim-autopairs').setup {}
  --   -- If you want to automatically add `(` after selecting a function or method
  --   -- local cmp_autopairs = require 'nvim-autopairs.completion.cmp'
  --   -- local cmp = require 'cmp'
  --   -- cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
  -- end,
  'echasnovski/mini.pairs',
  event = 'VeryLazy',
  opts = {
    modes = { insert = true, command = true, terminal = false },
    -- skip autopair when next character is one of these
    skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
    -- skip autopair when the cursor is inside these treesitter nodes
    skip_ts = { 'string' },
    -- skip autopair when next character is closing pair
    -- and there are more closing pairs than opening pairs
    skip_unbalanced = true,
    -- better deal with markdown code blocks
    markdown = true,
  },
  config = function(_, opts)
    require('mini.pairs').setup(opts)
  end,
}
