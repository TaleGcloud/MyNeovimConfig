return {
    "folke/flash.nvim",
    event = "VeryLazy", -- 懒加载：Neovim启动后再加载（不影响启动速度）
    keys = {
        { "s", false },
        { "S", false },
    },
    opts = {
        label = {
            uppercase = false,
            rainbow = { enabled = true },
            style = "overlay",
        },
        jump = {
            enabled = true,
            offset = 0,
            wrap = true,
            auto_jump = false,
        },
        modes = {
            char = {
                enabled = true,
                jump_labels = true,
                multi_line = true,
                keys = { "f", "F", "t", "T" },
            },
            search = {
                enabled = true,
                highlight = { backdrop = true },
            },
        },
    },
}
