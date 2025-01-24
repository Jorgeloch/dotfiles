return {
  "rshkarin/mason-nvim-lint",
  config = function()
    local linter = require("mason-nvim-lint")

    linter.setup({
      ensure_installed = {
        "cpplint",
        "eslint_d"
      }
    })
  end
}
