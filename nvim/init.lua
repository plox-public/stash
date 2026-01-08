vim.pack.add{
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/ibhagwan/fzf-lua' },
  { src = 'https://github.com/ellisonleao/gruvbox.nvim' },
}

vim.g.mapleader = ' '

-- buffers and navigation
vim.keymap.set('n', '<leader>bn', ':bnext<CR>', {noremap=true})
vim.keymap.set('n', '<leader>bp', ':bprev<CR>', {noremap=true})
vim.keymap.set('n', '<S-l>', ':bprev<CR>', {noremap=true})
vim.keymap.set('n', '<S-h>', ':bnext<CR>', {noremap=true})
vim.keymap.set('n', '<leader>ls', ':ls<CR>', {noremap=true})
vim.keymap.set('n', '<leader>e', ':Ex<CR>', {noremap=true})

-- window splits
vim.keymap.set('n', '<leader>ws', '<C-w>s<CR>', {noremap=true})
vim.keymap.set('n', '<leader>wv', '<C-w>v<CR>', {noremap=true})

-- save/quit shortcuts
vim.keymap.set('n', '<leader>wq', ':write<CR>:quit<CR>', {noremap=true})
vim.keymap.set('n', '<leader>q', ':quit<CR>', {noremap=true})

-- vim options
vim.opt.colorcolumn = "80,120"
vim.cmd.colorscheme("gruvbox")
-- plugin configurations
--
-- lsp-config
vim.lsp.enable('pyright')
vim.lsp.enable('clangd')
vim.lsp.enable('rust-analyzer')

-- fzf keybinds
local fzf = require('fzf-lua')
vim.keymap.set('n', '<leader>ff', fzf.files, { desc = 'Fzf Files' })
