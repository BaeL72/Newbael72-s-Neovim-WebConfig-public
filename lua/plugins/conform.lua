return
{
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        javascript = {"prettierd", "prettier", stop_after_first = true},
        typescript = {"prettierd", "prettier", stop_after_first = true},
        javascriptreact = {"prettierd", "prettier", stop_after_first = true},
        typescriptreact = {"prettierd", "prettier", stop_after_first = true},
        css = {"prettierd", "prettier", stop_after_first = true},
        html = {"prettierd", "prettier", stop_after_first = true},
      },
      format_on_save = {
        timeout = 500,
        lsp_format = "fallback",
      }
    })
  end
}
