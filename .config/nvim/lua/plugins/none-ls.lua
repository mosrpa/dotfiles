return {
  "nvimtools/none-ls.nvim",
  event = { "BufReadPre", "BufNewFile" }, -- load the plugin when entering a buffer
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      source = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.black, -- python formate
        null_ls.builtins.formatting.isort, -- python sort & lint
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.completion.spell,
      },
    })

    vim.keymap.set('n', '<leader>fm', vim.lsp.buf.format, {})
  end
}
