return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      { "<C-e>", "<leader>fe", desc = "Explorer NeoTree (cwd)", remap = true },
    },
    opts = {
      window = {
        mappings = {
          ["o"] = "open",
          ["x"] = "close_node",
          ["/"] = "",
        },
      },
      event_handlers = {
        {
          event = "file_opened",
          handler = function(file_path)
            --auto close
            require("neo-tree").close_all()
          end,
        },
      },
    },
  },
}
