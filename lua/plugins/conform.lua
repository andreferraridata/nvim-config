return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "ruff_format", "ruff_organize_imports" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      json = { "prettier" },
      yaml = { "prettier" },
      markdown = { "prettier" },
      c = { "clang-format" },
      cpp = { "clang-format" },
    },
    format_on_save = {
      timeout_ms = 1000,
      lsp_format = "fallback",  -- se non c'è formatter dedicato, usa quello dell'LSP
    },
  },
  init = function()
    -- Usa conform come formatter di default anche per gq
    vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
  end,
}
