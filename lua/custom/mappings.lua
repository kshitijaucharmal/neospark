local M = { }

M.general = {
  n = {
    -- Page centering
    ['<C-d>'] = { "<C-d>zz<CR>", "Center page when going down"},
    ['<C-u>'] = { "<C-u>zz<CR>", "Center page when going up"},

    -- Execution
    ['<F4>'] = { ":!time $HOME/.scripts/executor2 %; read<CR>" },
    ['<F5>'] = { ":!time $HOME/.scripts/executor %; read<CR>" },

    -- Undo tree 
    ['<leader>u'] = { ":UndotreeToggle<CR>", "Toggle undotree"},

    -- Harpoon
    ['<leader>hh'] = { ":lua require(\"harpoon.ui\").toggle_quick_menu()<CR>", "Open Harpoon menu"},
    ['<leader>ha'] = { ":lua require(\"harpoon.mark\").add_file()<CR>", "Add this file to harpoon" },
    ['<leader>1'] = { ":lua require(\"harpoon.ui\").nav_file(1)<CR>", "Jump to file 1"},
    ['<leader>2'] = { ":lua require(\"harpoon.ui\").nav_file(2)<CR>", "Jump to file 2"},
    ['<leader>3'] = { ":lua require(\"harpoon.ui\").nav_file(3)<CR>", "Jump to file 3"},
    ['<leader>4'] = { ":lua require(\"harpoon.ui\").nav_file(4)<CR>", "Jump to file 4"},
    ['<leader>5'] = { ":lua require(\"harpoon.ui\").nav_file(5)<CR>", "Jump to file 5"},
  }
}

return M
