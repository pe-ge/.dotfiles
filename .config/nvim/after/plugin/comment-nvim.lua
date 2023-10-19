local status_ok, comment = pcall(require, "Comment")
if not status_ok then
  return
end

comment.setup {
  pre_hook = function(ctx)
    local U = require "Comment.utils"

    local location = nil
    if ctx.ctype == U.ctype.block then
      location = require("ts_context_commentstring.utils").get_cursor_location()
    elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
      location = require("ts_context_commentstring.utils").get_visual_start_location()
    end

    return require("ts_context_commentstring.internal").calculate_commentstring {
      key = ctx.ctype == U.ctype.line and "__default" or "__multiline",
      location = location,
    }
  end,

  post_hook = function(ctx)
    if ctx.range.srow == ctx.range.erow then
      local win = vim.api.nvim_get_current_win()
      local cursor_pos = vim.api.nvim_win_get_cursor(win)
      local new_line = cursor_pos[1] + 1  -- Increment the line number
      local new_col = cursor_pos[2]       -- Keep the column the same

      vim.api.nvim_win_set_cursor(win, {new_line, new_col})
    end
  end,

  toggler = {
    line = '<C-_>',
  },

  opleader = {
    line = '<C-_>',
  },
}

