return {
  "windwp/nvim-autopairs",
  event = { "InsertEnter" },
  dependencies = {
    "hrsh7th/nvim-cmp",
  },

  config = function()
    -- import autopairs

    local autopairs = require("nvim-autopairs")

    --configure autopairs
    autopairs.setup({
      check_ts = true, -- enable tree sitter
      ts_config = {
        lua = { "string" }, -- don't add pairs in lua string treesitter nodes
        javascript = { "template_string" }, -- don't add in js template string
        java = false, -- don't check for java
      },
    })

    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    local cmp = require("cmp")

    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end
}
