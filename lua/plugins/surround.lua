return {
  { "echasnovski/mini.surround", enabled = false },
  {
    "kylechui/nvim-surround",
    branch = "main", -- Use for stability; omit to use `main` branch for the latest features
    -- opts = {
    --   keymaps = {
    --     insert = "<C-g>s",
    --     insert_line = "<C-g>S",
    --     normal = "ys",
    --     normal_cur = "yss",
    --     normal_line = "yS",
    --     normal_cur_line = "ySS",
    --     visual = "S",
    --     visual_line = "gS",
    --     delete = "ds",
    --     change = "cs",
    --   },
    -- },
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  },
}
