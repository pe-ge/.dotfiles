local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<Tab>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<C-S-h>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<C-S-l>', '<Cmd>BufferMoveNext<CR>', opts)
-- Close buffer
map('n', '<C-S-x>', '<Cmd>BufferClose<CR>', opts)
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
