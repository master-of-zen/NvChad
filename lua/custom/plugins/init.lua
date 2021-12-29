local overrides = require "custom.plugins.overrides"

return {

  -- enables dashboard
  ["goolord/alpha-nvim"] = { disable = false },

  ["ggandor/lightspeed.nvim"] = {},

  ['rose-pine/neovim'] = {
    as = 'rose-pine',
    config = function()
        vim.cmd('colorscheme rose-pine')
    end
  },


  ["folke/which-key.nvim"] = { disable = false},

  -- Override plugin definition options
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- overrde plugin configs
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  -- code formatting, linting etc
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  -- remove plugin
  -- ["hrsh7th/cmp-path"] = false,
}
