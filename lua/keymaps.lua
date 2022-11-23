local keymaps = {
  {
    -- Escape Terminal mode.
    modes = {"t"},
    key = "<Esc>",
    value = "<C-\\><C-n>",
  },
  {
    -- Paste and auto-indent without yanking the replaced text.
    modes = {"n", "v"},
    key = "p",
    value = '"0p=`]',
  },
  {
    -- Enter un-highlights search results.
    modes = {"n"},
    key = "<CR>",
    value = ":noh<CR><CR>",
  },
  {
    -- Cut to buffer.
    modes = {"v"},
    key = "x",
    value = "ygvd",
  },
}

for _, keymap in ipairs(keymaps) do
  for _, mode in ipairs(keymap.modes) do
    vim.keymap.set(mode, keymap.key, keymap.value)
  end
end

