local M = {}

local PLUGIN_CONFIG_PATH = "~/.config/nvim/lua/config"

function M.load_directory(path)
  -- https://www.reddit.com/r/neovim/comments/rsrmux/source_all_files_in_a_directory_using_lua_script/
  local paths = vim.split(vim.fn.glob(path.."/*lua"), "\n")

  for _, file in pairs(paths) do
    vim.cmd("source "..file)
  end
end

--- Source all plugin configs in the path defined by the config path.
function M.load_plugin_configs()
  M.load_directory(PLUGIN_CONFIG_PATH)
  M.load_directory(PLUGIN_CONFIG_PATH .. "/duck")
  M.load_directory(PLUGIN_CONFIG_PATH .. "/fterm")
  M.load_directory(PLUGIN_CONFIG_PATH .. "/fzf")
end

--- Ensure that packer is installed. If not, it will be installed.
function M.ensure_packer()
  local fn = vim.fn
  local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
      "git", "clone", "--depth", "1",
      "https://github.com/wbthomason/packer.nvim", install_path
    })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

--- Set nvim to auto-reload the luafile whenever it changes.
function M.set_luafile_auto_reload()
  vim.cmd([[
    augroup user_luafile
      autocmd!
      autocmd BufWritePost init.lua source <afile>
    augroup end
  ]])
end

--- Set nvim to auto-compile packer whenever plugins.lua changes.
function M.set_packer_auto_compile()
  vim.cmd([[
    augroup packer_user_config
      autocmd!
      autocmd BufWritePost plugins.lua source <afile> | PackerCompile
    augroup end
  ]])
end

return M

