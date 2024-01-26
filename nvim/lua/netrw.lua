

vim.cmd [[
  augroup AutoOpenNetrw
    autocmd VimEnter * :Lexplore <split> winheight=10 winwidth=20
  augroup END
]]


vim.g.netrw_altv          = 1
vim.g.netrw_fastbrowse    = 2
vim.g.netrw_keepdir       = 0
vim.g.netrw_liststyle     = 3
vim.g.netrw_retmap        = 1
vim.g.netrw_silent        = 1
vim.g.netrw_special_syntax = 1
vim.g.netrw_banner = 0
vim.g.netrw_browse_split = 4
vim.g.netrw_winsize = 20



function ToggleNetrwFocus()
    local winnr = vim.fn.winnr()
    local bufname = vim.fn.bufname()
    for i = 1, vim.fn.winnr('$') do
        if vim.fn.winbufnr(i) == bufname and i ~= winnr then
            vim.cmd(i .. 'wincmd w')
            return
        end
    end
    vim.cmd('Lexplore')
end


vim.api.nvim_set_keymap("n", "<leader>e", ":lua ToggleNetrwFocus()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>m", "<C-w>w", { noremap = true })
