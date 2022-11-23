local fzf_lua = require('fzf-lua')

local keymaps = {
  -- Find Files
  { key = "ff", value = fzf_lua.files },

  -- Find Grep
  { key = "fg", value = fzf_lua.live_grep },

  -- Find Tabs
  { key = "ft", value = fzf_lua.tabs },

  -- Find Symbols (Local)
  { key = "fsl", value = fzf_lua.lsp_document_symbols },

  -- Find Symbols (Global)
  { key = "fsg", value = fzf_lua.lsp_live_workspace_symbols },

  -- Find Diagnostics (Local)
  { key = "fdl", value = fzf_lua.diagnostics_document },

  -- Find Diagnostics (Global)
  { key = "fdg", value = fzf_lua.diagnostics_workspace },

  -- Git Status
  { key = "gs", value = fzf_lua.git_status },
}

-- All keymaps are mapped in normal mode, and using the leader key.
for _, keymap in ipairs(keymaps) do
  vim.keymap.set("n", "<Leader>"..keymap.key, keymap.value)
end

