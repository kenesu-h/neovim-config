vim.keymap.set('n', '<Leader>f', '<cmd>lua require("fzf-lua").files()<CR>')
vim.keymap.set('n', '<Leader>gr', '<cmd>lua require("fzf-lua").live_grep()<CR>')
vim.keymap.set('n', '<Leader>gs', '<cmd>lua require("fzf-lua").git_status()<CR>')
vim.keymap.set('n', '<Leader>gc', '<cmd>lua require("fzf-lua").git_commits()<CR>')
vim.keymap.set('n', '<Leader>gb', '<cmd>lua require("fzf-lua").git_branches()<CR>')
vim.keymap.set('n', '<Leader>gS', '<cmd>lua require("fzf-lua").git_stash()<CR>')

