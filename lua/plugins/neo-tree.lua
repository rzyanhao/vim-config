return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      -- { "<C-e>", "<leader>fe", desc = "Explorer NeoTree (cwd)", remap = true },
      -- {
      --   "<C-e>",
      --   function()
      --     require("neo-tree.command").execute({ toggle = true })
      --   end,
      --   desc = "Explorer NeoTree (cwd)",
      -- },

      -- {
      --   "<C-e>",
      --   function()
      --     -- require("neo-tree.command").execute({ toggle = true, dir = require("lazyvim.util").get_root() })
      --     require("neo-tree.command").execute({ toggle = true })
      --   end,
      --   desc = "Explorer NeoTree (root dir)",
      -- },
      {
        "<leader>fe",
        function()
          -- require("neo-tree.command").execute({ toggle = true, dir = require("lazyvim.util").get_root() })
          require("neo-tree.command").execute({ toggle = true })
        end,
        desc = "Explorer NeoTree (root dir)",
      },
      {
        "<leader>fE",
        function()
          require("neo-tree.command").execute({ toggle = true })
        end,
        desc = "Explorer NeoTree (cwd)",
      },
      { "<leader>e", "<leader>fe", desc = "Explorer NeoTree (cwd)", remap = true },
      { "<leader>E", "<leader>fE", desc = "Explorer NeoTree (cwd)", remap = true },
      { "<C-e>", "<leader>fe", desc = "Explorer NeoTree (cwd)", remap = true },
      -- {
      --   "<leader>e",
      --   function()
      --     require("neo-tree.command").execute({ toggle = true })
      --   end,
      --   desc = "Explorer NeoTree (cwd)",
      -- },
    },
    opts = {
      window = {
        mappings = {
          ["o"] = "open",
          ["x"] = "close_node",
          ["/"] = "",
        },
      },
      filesystem = {
        bind_to_cwd = true,
        follow_current_file = {
          enabled = true,
        },
      },
      event_handlers = {
        {
          event = "file_opened",
          handler = function(file_path)
            --auto close
            require("neo-tree.sources.manager").close_all();
          end,
        },
      },
    },
  },
}
