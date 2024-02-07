-- Navigate buffers
-- Buffers are the files loaded in memory
-- Windows, tabs and panes are visual representation of buffers
-- So navigating across buffers should cover the workflows
vim.keymap.set("n", "tk", vim.cmd.bnext)
vim.keymap.set("n", "tj", vim.cmd.bprev)
vim.keymap.set("n", "th", vim.cmd.bfirst)
vim.keymap.set("n", "tl", vim.cmd.blast)
vim.keymap.set("n", "td", vim.cmd.bdelete)

vim.keymap.set("n", "<leader>e", vim.cmd.Lexplore)
vim.keymap.set({ "v", "i" }, "jk", "<Esc>")
vim.keymap.set({ "v", "i" }, "kj", "<Esc>")
vim.keymap.set({ "v", "i" }, "C-c", "<Esc>")
vim.keymap.set({ "v", "i" }, "<Esc>", "<nop>")
-- Setup for terminal mode
vim.keymap.set("t", "jk", "<C-\\><C-n>")

-- Disable mouse scrolling
vim.keymap.set({ "n", "v", "o" }, "<ScrollWheelUp>", "<nop>")
vim.keymap.set({ "n", "v", "o" }, "<S-ScrollWheelUp>", "<nop>")
vim.keymap.set({ "n", "v", "o" }, "<C-ScrollWheelUp>", "<nop>")
vim.keymap.set({ "n", "v", "o" }, "<ScrollWheelDown>", "<nop>")
vim.keymap.set({ "n", "v", "o" }, "<S-ScrollWheelDown>", "<nop>")
vim.keymap.set({ "n", "v", "o" }, "<C-ScrollWheelDown>", "<nop>")
vim.keymap.set({ "n", "v", "o" }, "<ScrollWheelLeft>", "<nop>")
vim.keymap.set({ "n", "v", "o" }, "<S-ScrollWheelLeft>", "<nop>")
vim.keymap.set({ "n", "v", "o" }, "<C-ScrollWheelLeft>", "<nop>")
vim.keymap.set({ "n", "v", "o" }, "<ScrollWheelRight>", "<nop>")
vim.keymap.set({ "n", "v", "o" }, "<S-ScrollWheelRight>", "<nop>")
vim.keymap.set({ "n", "v", "o" }, "<C-ScrollWheelRight>", "<nop>")

-- Pairs
vim.keymap.set("n", '<Leader>"', 'viw<esc>a"<esc>hbi"<esc>lel')
vim.keymap.set("n", '<Leader>\'', 'viw<esc>a\'<esc>hbi\'<esc>lel')
vim.keymap.set("n", '<Leader>`', 'viw<esc>a`<esc>hbi`<esc>lel')

-- Disable arrow keys
vim.keymap.set({ "n", "v", "o", "i" }, "<Up>", "<nop>")
vim.keymap.set({ "n", "v", "o", "i" }, "<Down>", "<nop>")
vim.keymap.set({ "n", "v", "o", "i" }, "<Left>", "<nop>")
vim.keymap.set({ "n", "v", "o", "i" }, "<Right>", "<nop>")

-- Keymaps for better default experience
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- See `:help telescope.builtin`
local telescope_builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>?', telescope_builtin.oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', telescope_builtin.buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout,
  -- etc.
  telescope_builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false
  })
end, { desc = '[/] Fuzzily search in current buffer' })


vim.keymap.set('n', '<leader>gf', telescope_builtin.git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sf', telescope_builtin.find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', telescope_builtin.help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', telescope_builtin.grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', telescope_builtin.live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', telescope_builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })

