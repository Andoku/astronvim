-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },

    ["<C-f>"] = { function() require("telescope.builtin").find_files() end, desc = "Find files" },
    ["<C-g>"] = { function() require("telescope.builtin").live_grep() end, desc = "Find words" },
    ["<C-b>"] = { function() require("telescope.builtin").buffers() end, desc = "Find buffers" },
    
    -- switch between .cpp and .h files
    ["<leader>s"] = { "<cmd>ClangdSwitchSourceHeader<cr>" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
