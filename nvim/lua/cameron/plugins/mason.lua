return {
    "williamboman/mason.nvim",
    tag = "stable",
    lazy = false,
    opts = {
        ensure_installed = {
            "lua_ls",
            "marksman",
            "rust_analyzer",
        },
    },
    config = true,
}
