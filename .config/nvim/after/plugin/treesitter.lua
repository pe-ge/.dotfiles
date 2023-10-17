local configs = require("nvim-treesitter.configs")
configs.setup({
    ensure_installed = { "bash", "cmake", "cpp", "dockerfile", "json", "markdown", "lua", "proto", "python", "yaml" },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },  
})
