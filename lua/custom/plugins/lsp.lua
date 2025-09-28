return {
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        tsserver = {},
        eslint = {},
        tailwindcss = {},
        emmet_ls = {
          filetypes = {
            'html',
            'css',
            'scss',
            'javascriptreact',
            'typescriptreact',
          },
        },
      },
    },
  },
}
