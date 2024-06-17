return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    -- import treesitter
    local treesitter = require("nvim-treesitter")

    treesitter.setup({
      -- enable hightlight
      hightlight = {
        enable = true,
      },
      --enable indent
      indent = { enable = true },

      -- enable auto tagging 
      autotag = {
        enable = true
      },
      
      ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "html",
        "yaml",
        "css",
        "markdown",
        "markdwown_inline",
        "bash",
        "lua",
        "vim",
        "gitignore",
        "query",
        "c",
        "sql",
        "pip_requirements",
        "cpp",
        "csv",
        "json5",
        "JSON_with_comments",
        "python",
      },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>"
        },
      },
    })
  end
}
