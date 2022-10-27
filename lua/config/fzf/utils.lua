local fzf_lua = require "fzf-lua"
local path = require "fzf-lua.path"

local M = {}

function M.get_fullpath(selected, opts)
  local entry = path.entry_to_file(selected, opts, opts.force_uri)
  entry.ctag = opts._ctag and path.entry_to_ctag(selected)
  local fullpath = entry.path or entry.uri and entry.uri:match("^%a+://(.*)")
  if not path.starts_with_separator(fullpath) then
    fullpath = path.join({opts.cwd or vim.loop.cwd(), fullpath})
  end
  return fullpath
end

-- Useful for running something on the currently typed out path.
-- Relevant: https://github.com/ibhagwan/fzf-lua/issues/508
function M.get_last_query()
  return fzf_lua.config.__resume_data.last_query
end

return M

