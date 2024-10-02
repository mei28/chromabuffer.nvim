local M = {}

local function get_highlight_color(group, attribute)
  local hl = vim.api.nvim_get_hl_by_name(group, true)
  if attribute == "fg" then
    return string.format("#%06x", hl.foreground or 0)
  elseif attribute == "bg" then
    return string.format("#%06x", hl.background or 0)
  end
  return nil
end

function M.get_dynamic_highlights()
  local colors = {
    separator_fg = get_highlight_color("Normal", "bg"),
    background_fg = get_highlight_color("Comment", "fg"),
    selected_fg = get_highlight_color("Statement", "fg"),
    fill_bg = get_highlight_color("StatusLine", "bg"),
    bg = get_highlight_color("Normal", "bg"),
  }
  return colors
end

return M
