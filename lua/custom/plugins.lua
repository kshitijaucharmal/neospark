local plugins = {
  {
    'rust-lang/rust.vim',
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "theprimeagen/harpoon",
    event = "VeryLazy",
  },
  {
    "OmniSharp/omnisharp-vim",
    ft = "csharp",
  },
  {
    "mbbill/undotree",
    event = "VeryLazy",
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function ()
      return require "custom.configs.null-ls"
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "black",
        "clangd",
        "clang-format",
        "pyright",
        "omnisharp",
        "rust-analyzer",
      }
    }
  }
}
return plugins
