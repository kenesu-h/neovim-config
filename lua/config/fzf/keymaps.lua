vim.keymap.set('n', '<Leader>lf', '<cmd>lua require("fzf-lua").files()<CR>')
vim.keymap.set('n', '<Leader>lg', '<cmd>lua require("fzf-lua").live_grep()<CR>')
vim.keymap.set('n', '<Leader>Gs', '<cmd>lua require("fzf-lua").git_status()<CR>')
vim.keymap.set('n', '<Leader>Gc', '<cmd>lua require("fzf-lua").git_commits()<CR>')
vim.keymap.set('n', '<Leader>Gb', '<cmd>lua require("fzf-lua").git_branches()<CR>')
vim.keymap.set('n', '<Leader>GS', '<cmd>lua require("fzf-lua").git_stash()<CR>')

