vim.cmd [[
  augroup AutoOpenNetrw
    autocmd VimEnter * :Lexplore <split> winheight=10 winwidth=20
  augroup END
]]

vim.g.netrw_altv          = 1
vim.g.netrw_localrmdir    = 1  -- Add this line
vim.g.netrw_liststyle     = 3
vim.g.netrw_retmap        = 1
vim.g.netrw_silent        = 1
vim.g.netrw_special_syntax = 1
vim.g.netrw_banner = 0
vim.g.netrw_browse_split = 4
vim.g.netrw_winsize = 20

function ToggleNetrwFocus()
    -- ... (existing code)
end

vim.api.nvim_set_keymap("n", "<leader>e", ":Lexplore<CR>", { noremap = true })  -- Added keymap
vim.api.nvim_set_keymap("n", "<leader>m", "<C-w>w", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>u", ":ExploreUp<CR>", { noremap = true })  -- Add this line
