-- Setup lazy.nvim
require("lazy").setup({
  {"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"},
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",
  "nvim-lualine/lualine.nvim",
  {
  'f4z3r/gruvbox-material.nvim',
  name = 'gruvbox-material',
  lazy = false,
  priority = 1000,
  opts = {},
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
    config = function()
    -- Isso ativa o nvim-lspconfig.
    -- Você pode adicionar suas configurações de LSP aqui ou em um arquivo separado.
    require("lspconfig").lua_ls.setup {} -- Exemplo para lua_ls
    require("lspconfig").rust_analyzer.setup {} -- Exemplo para rust_analyzer
    -- O mason-lspconfig.setup deve vir depois de carregar o nvim-lspconfig
    end,
  },
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.4",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
  "rafamadriz/friendly-snippets",
})