return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false, -- 启动时立即加载，不延迟
        priority = 1000, -- 最高优先级，覆盖所有其他主题配置
        config = function()
            require("catppuccin").setup({
                flavour = "mocha",
                term_colors = true,
                integrations = {
                    cmp = true,
                    treesitter = true,
                    lazy = true,
                    lsp_saga = true,
                    telescope = true,
                    neotree = true,
                    ts_rainbow = true,
                },
                color_overrides = {
                    mocha = {
                        text = "#dddddd",
                        subtext1 = "#CCCCCC",
                        subtext0 = "#999999",
                        overlay2 = "#808080",
                        overlay1 = "#666666",
                        overlay0 = "#999999",
                        surface2 = "#3F3F3F",
                        surface1 = "#4d4d4d", -- 选中区域
                        surface0 = "#282828",
                        base = "#1f1f1f", -- 编辑区背景
                        mantle = "#181818", -- 文件区背景
                        crust = "#141414", -- 窗口边框颜色
                    },
                },
                custom_highlights = function(colors)
                    return {
                        keyword = { fg = "#569cd6" },
                        Boolean = { fg = "#569cd6" },
                        Function = { fg = "#dcdcaa" },
                        String = { fg = "#ce9178" },
                        Number = { fg = "#b5cea8" },
                        Type = { fg = "#4ec9b0" },
                        Include = { fg = "#c586c0" },
                        Operator = { fg = "#d4d4d4" },
                        Delimiter = { fg = "#d4d4d4" },
                        Conditional = { fg = "#c586c0" },
                        Comment = { fg = "#6a9955" },

                        ["@Module"] = { fg = "#4ec9b0" },
                        ["@variable"] = { fg = "#9cdcfe" },
                        ["@variable.member"] = { fg = "#9cdcfe" },
                        ["@variable.parameter"] = { fg = "#9cdcfe" },
                        ["@property"] = { fg = "#9cdcfe" },
                        ["@keyword"] = { fg = "#569cd6" },
                        ["@keyword.return"] = { fg = "#c586c0" },
                        ["@keyword.function"] = { fg = "#569cd6" },
                        ["@constant.builtin"] = { fg = "#569cd6" },
                        ["@type.builtin"] = { fg = "#4ec9b0" },

                        CmpBorder = { fg = colors.surface2 },
                        Pmenu = { bg = colors.mantle },
                        LineNr = { fg = colors.overlay2 },
                        CursorLineNr = { fg = colors.subtext1, bold = true },

                        SnacksIndent = { fg = colors.surface2, bold = true },
                        SnacksIndentScope = { fg = colors.subtext0, bold = true },
                    }
                end,
            })
            vim.cmd([[colorscheme catppuccin]])
            vim.g.colors_name = "catppuccin"
        end,
    },
}
