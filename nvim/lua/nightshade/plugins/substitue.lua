return {
  "gbprod/substitute.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local substitue = require("substitute")

    substitue.setup()

    --set keymaps
    local keymap = vim.keymap

    vim.keymap.set("n", "s", substitue.operator, { desc = "Substitue with motion"})
    vim.keymap.set("n", "ss", substitue.line, { desc = "Substitue line"})
    vim.keymap.set("n", "S", substitue.eol, { desc = "Substitue to end of line"})
    vim.keymap.set("x", "s", substitue.visual, { desc = "Substitue in visual mode"})
  end
}
