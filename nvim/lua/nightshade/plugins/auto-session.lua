return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require("auto-session")

    auto_session.setup({
      auto_restored_enabled = false
      -- auto_session_suppressed_dirs = {"~/" }
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore lost session" })
    keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save current" }) -- save current session, also saved periodically
  end,
}
