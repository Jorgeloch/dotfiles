return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")

    mason.setup({})

    mason_lspconfig.setup({
      ensure_installed = {
        "html",
        "cssls",
        "tailwindcss",
        "lua_ls",
        "prismals",
        "gopls",
        "clangd",
        "dockerls",
        "docker_compose_language_service",
        "jsonls",
        "glsl_analyzer",
      },
      automatic_installation = true,
    })
  end,
}
