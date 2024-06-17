return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "folke/todo-comments.nvim" },
  opts = {},
  cmd = "Trouble",
  keys = {
    { "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", desc = "Open/close trouble list" },
    { "<leader>xw", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Open trouble workspace diagnostics" },
    -- { "<leader>xd", "<cmd>TroubleToggle document_diagnostics<CR>", desc = "Open trouble document diagnostics" },
    { "<leader>xq", "<cmd>Trouble qflist toggle<CR>", desc = "Open trouble quickfix list" },
    -- { "<leader>xl", "<cmd>TroubleToggle loclist toggle<CR>", desc = "Open trouble location list" },
  },
}
