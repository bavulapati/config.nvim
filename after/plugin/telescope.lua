-- See `:help telescope` and `:help telescope.setup()`
require('telescope').setup()

--Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')


