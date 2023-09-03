return {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
            keymaps = {
                normal = "ms",
                normal_line = "mS",
                visual = "ms",
                visual_line = "mS",
                delete = "md",
                change = "mr",
                change_line = "mR",
            },
        })
    end,
}
