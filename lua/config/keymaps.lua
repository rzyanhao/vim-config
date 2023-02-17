-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

local format = require("lazyvim.plugins.lsp.format").format

map("n", "<S-h>", "^")
map("n", "<S-l>", "$")
map("n", "<leader><leader>a", "ggVG")
map("n", "<leader>p", format)

map("n", "∆", "<cmd>m .+1<CR>")
map("n", "˚", "<cmd>m .-2<CR>")
map("i", "∆", "<cmd>m .+1<CR>")
map("i", "˚", "<cmd>m .-2<CR>")
--
local hop = require("hop")
local directions = require("hop.hint").HintDirection
vim.keymap.set("", "<space>", function()
  hop.hint_words({})
end, { remap = true })
vim.keymap.set("", "f", function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR })
end, { remap = true })
vim.keymap.set("", "F", function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR })
end, { remap = true })
vim.keymap.set("", "t", function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, hint_offset = -1 })
end, { remap = true })
vim.keymap.set("", "T", function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, hint_offset = 1 })
end, { remap = true })
vim.keymap.set("", "<leader>j", function()
  hop.hint_lines_skip_whitespace({ direction = directions.AFTER_CURSOR })
end, { remap = true })
vim.keymap.set("", "<leader>k", function()
  hop.hint_lines_skip_whitespace({ direction = directions.BEFORE_CURSOR })
end, { remap = true })
