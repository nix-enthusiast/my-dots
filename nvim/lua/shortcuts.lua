local function map(m, k, v)
  vim.keymap.set(m, k, v, { silent = true })
end

map("n", "<leader>h", ":noh<cr>")
map("n", "<leader>n", ":Ex<cr>")
map("n", "<leader>d", ":lua vim.lsp.buf.hover()<cr>")
map("n", "<leader>lf", ":lua vim.lsp.buf.format()<cr>")


map("n", "<M-Up>",   ":m .-2<CR>")
map("n", "<M-Down>", ":m .+1<CR>")

map("n", "<leader>w", ":w<cr>")
map("n", "<leader>o", ":w!<cr>")

map("n", "<leader>x", ":x<cr>")
map("n", "<leader>f", ":x!<cr>")

map("n", "<leader>q", ":q<cr>")
map("n", "<leader>a", ":q!<cr>")


map("n", "<leader>bq", ":bd<cr>")
map("n", "<leader>ba", ":bd!<cr>")
map("n", "<leader>bw", ":w|bd<cr>")
map("n", "<leader>bf", ":w!|bd<cr>")


map("v", "<leader>cy", "\"+y")
map("v", "<leader>cyy", "\"+yy")
map("n", "<leader>cy", "\"+y")
map("n", "<leader>cyy", "\"+yy")

map("v", "<leader>cp", "\"+p")
map("v", "<leader>cP", "\"+P")
map("n", "<leader>cp", "\"+p")
map("n", "<leader>cP", "\"+P")


local builtin = require('telescope.builtin')
map("n", "<leader>ff", builtin.find_files)
map("n", "<leader>fb", builtin.buffers)
map("n", "<leader>fp", builtin.git_files)
map("n", "<leader>fg", builtin.live_grep)
map("n", "<leader>fd", ":Telescope diagnostics<CR>")
map("n", "<leader>fs", ":Telescope lsp_document_symbols<CR>")

map("n", "<leader>mp", ":MarkdownPreview<CR>")
map("n", "<leader>ms", ":MarkdownPreviewStop<CR>")

