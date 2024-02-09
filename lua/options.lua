-- Options
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.nu = true
vim.opt.exrc = true
vim.opt.relativenumber = true
vim.opt.cursorline = false
vim.opt.hidden = true
vim.opt.undodir = os.getenv("HOME").."/.vim/undodir"
vim.opt.undofile = true
vim.opt.incsearch = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.foldmethod = "marker"
vim.opt.foldmarker = "{,}"
vim.opt.ic = true
vim.opt.spell = true
vim.opt.spelllang = "en_us"
vim.opt.mouse = ""

vim.g.leetcode_browser = "firefox"

--local augroup = vim.api.nvim_create_augroup   -- Create/get autocommand group
--local autocmd = vim.api.nvim_create_autocmd   -- Create autocommand

---- Set indentation to 2 spaces
--augroup('setIndent', { clear = true })
--autocmd('Filetype', {
    --group = 'setIndent',
    --pattern = { 'xml', 'html', 'xhtml', 'css', 'scss', 'javascript', 'typescript', 'yaml', 'lua', 'tsx'
    --},
    --command = 'setlocal shiftwidth=2 tabstop=2'
--})

vim.cmd([[
    set nohlsearch
    set noerrorbells
    set nowrap
    set noswapfile
    set nobackup
    set nofoldenable
    autocmd BufRead,BufNewFile *.xml,*.html,*.xhtml,*.css,*.scss,*.js,*.ts,*.yaml,*.lua,*.tsx,*.mjs setlocal shiftwidth=2 tabstop=2
    command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
]])

-- Color scheme
vim.cmd("colo catppuccin-mocha")
-- vim.cmd("colo wal")

-- Leader
vim.g.mapleader = " "
