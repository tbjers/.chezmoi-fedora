return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      -- null_ls.builtins.diagnostics.eslint_d,
      -- null_ls.builtins.diagnostics.luacheck,
      -- null_ls.builtins.diagnostics.puppet_lint,
      -- null_ls.builtins.formatting.beautysh,
      -- null_ls.builtins.formatting.black,
      -- null_ls.builtins.formatting.eslint_d,
      -- null_ls.builtins.formatting.gofmt,
      -- null_ls.builtins.formatting.goimports,
      -- null_ls.builtins.formatting.isort,
      -- null_ls.builtins.formatting.jq,
      -- null_ls.builtins.formatting.markdownlint,
      -- null_ls.builtins.formatting.prettier,
      -- null_ls.builtins.formatting.rustfmt,
      -- null_ls.builtins.formatting.stylua,
      -- null_ls.builtins.formatting.taplo,
      -- null_ls.builtins.formatting.textlint,
      null_ls.builtins.diagnostics.dotenv_linter,
      null_ls.builtins.diagnostics.editorconfig_checker,
      null_ls.builtins.formatting.just,
      null_ls.builtins.formatting.terraform_fmt,
    }
    return config -- return final config table
  end,
}
