local utils = require "config.fzf.utils"
local fzf_lua = require "fzf-lua"
local actions = require "fzf-lua.actions"

fzf_lua.setup({
  actions = {
    files = {
      ['default'] = actions.file_edit_or_qf,
      ['alt-s'] = actions.file_split,
      ['alt-v'] = actions.file_vsplit,
      ['alt-t'] = actions.file_tabedit,
      ['alt-m'] = function()
        vim.fn.system("touch " .. utils.get_last_query())
        actions.resume()
      end,
      ['alt-d'] = function(selected, opts)
        if selected[1] ~= nil then
          local fullpath = utils.get_fullpath(selected[1], opts)
          vim.fn.delete(fullpath)
          actions.resume()
        end
      end,
      ['ctrl-alt-m'] = function()
        vim.fn.mkdir(utils.get_last_query())
        actions.resume()
      end,
      ['ctrl-alt-d'] = function()
        vim.fn.system("rmdir " .. utils.get_last_query())
        actions.resume()
      end,
    }, 
  },
  git = {
    status = {
      actions = {
        ["alt-g"] = function()
          print(utils.get_last_query())
          vim.fn.system("git " .. utils.get_last_query())
          actions.resume()
        end
      }
    }
  }
})

