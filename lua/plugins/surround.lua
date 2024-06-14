return {
  {
    "echasnovski/mini.surround",
    opts = {
      mappings = {
        add = "sa", -- Add surrounding in Normal and Visual modes
        delete = "sd", -- Delete surrounding
        find = "sf", -- Find surrounding (to the right)
        find_left = "sF", -- Find surrounding (to the left)
        highlight = "sh", -- Highlight surrounding
        replace = "sc", -- Replace surrounding
        update_n_lines = "sn", -- Update `n_lines`
      },
    },
  },
  -- {
  --   "kylechui/nvim-surround",
  --   branch = "main", -- Use for stability; omit to use `main` branch for the latest features
  --   opts = {
  --     keymaps = {
  --       insert = "<C-g>s",
  --       insert_line = "<C-g>S",
  --       normal = "sy",
  --       normal_cur = "yss",
  --       normal_line = "yS",
  --       normal_cur_line = "ySS",
  --       visual = "S",
  --       visual_line = "gS",
  --       delete = "ds",
  --       change = "cs",
  --     },
  --   },
  --   config = function()
  --     require("nvim-surround").setup({
  --       -- Configuration here, or leave empty to use defaults
  --     })
  --   end,
  -- },
}
