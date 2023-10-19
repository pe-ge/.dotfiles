local configs = require("nvim-treesitter.configs")
configs.setup({
    ensure_installed = { "bash", "cmake", "cpp", "dockerfile", "json", "markdown", "lua", "proto", "python", "yaml" },
    sync_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
    },
    indent = { enable = true },
    autopairs = { enable = true },
    context_commentstring = {
        enable = true,
        enable_autocmd = false,
   },
})
