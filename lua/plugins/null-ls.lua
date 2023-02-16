return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    -- enabled = false,
    opts = function()
      local nls = require("null-ls")
      return {
        sources = {
          -- nls.builtins.formatting.prettierd,
          nls.builtins.formatting.stylua,
          nls.builtins.diagnostics.flake8,
          nls.builtins.formatting.prettier,
          -- nls.builtins.formatting.eslint,
          -- nls.builtins.formatting.prettierd,
          nls.builtins.diagnostics.eslint,
          -- nls.builtins.diagnostics.eslint_d,
        },
      }
    end,
  },
}
