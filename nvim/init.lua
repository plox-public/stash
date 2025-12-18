vim.g.mapleader = ' '

-- buffers and navigation
vim.keymap.set('n', '<leader>bn', ':bnext<CR>', {noremap=true})
vim.keymap.set('n', '<leader>bp', ':bprev<CR>', {noremap=true})
vim.keymap.set('n', '<S-l>', ':bnext<CR>', {noremap=true})
vim.keymap.set('n', '<S-h>', ':bnext<CR>', {noremap=true})
vim.keymap.set('n', '<leader>ls', ':ls<CR>', {noremap=true})
vim.keymap.set('n', '<leader>e', ':Ex<CR>', {noremap=true})

-- save/quit shortcuts
vim.keymap.set('n', '<leader>ws', '<C-w>s<CR>', {noremap=true})
vim.keymap.set('n', '<leader>wv', '<C-w>v<CR>', {noremap=true})
vim.keymap.set('n', '<leader>wq', ':write<CR>:quit<CR>', {noremap=true})
vim.keymap.set('n', '<leader>q', ':quit<CR>', {noremap=true})

vim.pack.add{
  { src = 'https://github.com/neovim/nvim-lspconfig' },
}

vim.lsp.enable('pyright')
vim.lsp.enable('clangd')
vim.lsp.enable('rust-analyzer')
