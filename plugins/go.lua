return {
    {
        "mason-org/mason.nvim",
        opts = {
            ensure_installed = {},
        },
    },
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                gopls = {
                    -- 核心：指定系统 gopls 的路径（替换成你自己的路径）
                    cmd = { "/home/TaleG/go/bin/gopls" },
                    -- 保留你需要的 gopls 自定义配置
                    settings = {
                        gopls = {
                            gofumpt = true,
                            completeUnimported = true,
                            usePlaceholders = true,
                            analyses = {
                                unusedparams = true,
                                unusedvariable = true,
                                nilness = true,
                            },
                        },
                    },
                },
            },
        },
    },
}
