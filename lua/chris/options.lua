local opt = vim.opt

-- Font
vim.g.have_nerd_font = true

-- Mouse
opt.mouse = 'a'

-- NetRW
vim.g.netrw_liststyle = 3 -- Tree view
vim.g.netrw_gitignore= 0 -- Show .gitignore

-- Lines, numbers, cursor
opt.number = true
opt.relativenumber = true
opt.wrap = false
opt.cursorline = true
opt.cursorlineopt = 'number'
opt.scrolloff = 8 -- Can be used to keep cursor center focused on screen (set to 99)
opt.virtualedit = 'block'
opt.colorcolumn = '100'
opt.inccommand = 'split' -- Show :s command in action

-- Window split preferences
opt.splitbelow = true
opt.splitright = true

-- Indent, tabs, spaces
-- NOTE: ftplugins may adjust these
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = false -- Treesitter indent being used

-- Searching behavior (/)
vim.opt.hlsearch = true
vim.opt.incsearch = true
opt.ignorecase = true
vim.opt.smartcase = true -- Override ignore case if pattern has uppercase

-- GUI stuff
opt.termguicolors = true
opt.signcolumn = 'yes' -- Always show sign column, signs (git) would otherwise shift text

-- Default floating window style
opt.winborder = 'single'

-- Undo history instead of backups
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv('HOME') .. '/.local/state/nvim/undotree'
opt.undofile = true

-- Add @ to valid file name characters
vim.opt.isfname:append('@-@')

-- Spell checking
opt.spelllang = 'en_us'
opt.spell = true

-- Favor codebook spell check if available in the buffer.
-- See codebook.lua for language support.
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client == nil then
            return
        end
        if client.name == 'codebook' then
            vim.opt_local.spell = false
        end
    end
})

-- Highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
})
