-- disable netrw to avoid conflicts
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Main Shortcuts:
-- <leader>pv - toggle tree with current file selected
-- a - create a file or directory
-- d - remove a file or directory
-- r - rename a file or directory
--
-- <CR> - expand dir / open file
-- W - collapse
-- E - expand recursively
--
-- <C-v> - vsplit
-- <C-x> - split

require("nvim-tree").setup {
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
    highlight_opened_files = "name",
    highlight_modified = "name"
  },
  git = {
    ignore = false
  },
}

vim.keymap.set("n", "<leader>pv", ":NvimTreeFindFileToggle<CR>", { noremap = true, silent = true })

