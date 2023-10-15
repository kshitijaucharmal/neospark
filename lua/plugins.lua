-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
--vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use { 'wbthomason/packer.nvim' }
    use { 'mfussenegger/nvim-dap' }
    use { 'nvim-telescope/telescope.nvim' }
    use { 'nvim-lua/plenary.nvim' }
    use { 'junegunn/fzf', rtp = '~/.fzf', run = './install --all' }
    use { 'preservim/nerdtree' }
    use { 'vim-airline/vim-airline' }
    use { 'habamax/vim-godot' }
    use { 'sophacles/vim-processing' }
    use { 'skywind3000/asyncrun.vim' }
    use { 'junegunn/goyo.vim' }
    use { 'iamcco/markdown-preview.nvim', run = 'cd app && yarn install' }
    use { 'chrisbra/Colorizer' }
    use { 'liuchengxu/vista.vim' }
    use { 'gpanders/nvim-parinfer' }
    use { 'ThePrimeagen/harpoon' }
    use { 'preservim/nerdcommenter' }
    use { 'Yggdroot/indentLine' }
    use { 'mhinz/vim-startify' }
    use { 'krivahtoo/silicon.nvim', run = './install.sh' }
    use { 'christoomey/vim-tmux-navigator' }
	  use { 'tpope/vim-fugitive' }
    use { 'mbbill/undotree' }
    use { 'tpope/vim-surround' }
    use { 'patriciogonzalezvivo/vim-glslViewer' }
    use { 'neoclide/coc.nvim', branch = 'release' }
    use { 'mg979/vim-visual-multi', branch = 'master' }
    use { 'tomlion/vim-solidity' }
    use { 'ianding1/leetcode.vim' }

    -- Auto pairs
    use {
        "windwp/nvim-autopairs",
        wants = "nvim-treesitter",
        module = { "nvim-autopairs.completion.cmp", "nvim-autopairs" },
        config = function()
            require("config.autopairs").setup()
        end,
    }

    ---- LSP
    --use { 
        --'neovim/nvim-lspconfig',
        --"williamboman/mason.nvim",
        --"williamboman/mason-lspconfig.nvim",
    --}
    ---- CMP
    --use { 'hrsh7th/cmp-nvim-lsp',
        --'hrsh7th/cmp-buffer',
        --'hrsh7th/cmp-path',
        --'hrsh7th/cmp-cmdline',
        --'hrsh7th/nvim-cmp' 
    --}
    ---- Luasnip
    --use { 
        --'L3MON4D3/LuaSnip',
        --'saadparwaiz1/cmp_luasnip'
    --}

    -- Themes }
    use { "catppuccin/nvim", as = "catppuccin",
        config = function() require('catppuccin').setup({
            transparent_background=true,
            term_colors=true
        }) end
        }
    use { 'yonlu/omni.vim',
        'marko-cerovac/material.nvim',
        'vim-airline/vim-airline-themes',
        'dylanaraps/wal.vim',
        'morhetz/gruvbox',
        'sainnhe/everforest',
        'navarasu/onedark.nvim',
        'ayu-theme/ayu-vim',
        'nanotech/jellybeans.vim',
        'tomasr/molokai',
        'sainnhe/sonokai',
        'arturgoms/moonbow.nvim',
    }
    use { 'AlexvZyl/nordic.nvim', branch = 'main' }
    use {
        'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
        config = function() require('gitsigns').setup() end
    }
    use {'dracula/vim', as = 'dracula'}
    use {'tikhomirov/vim-glsl'}
end)
