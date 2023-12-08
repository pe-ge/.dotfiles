local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>rr', builtin.resume, {})

builtin.buffers({ sort_lastused = true, ignore_current_buffer = true })

require('telescope').setup{
    pickers = {
      live_grep = {
        theme = "dropdown",
        layout_config = {
            center = {
                width = 0.9,
                height = 0.5,
            },
        },
      }
    },
}
