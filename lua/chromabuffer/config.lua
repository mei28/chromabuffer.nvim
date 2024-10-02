local M = {}

M.options = {
  separator_style = 'thin',
  always_show_bufferline = true,
  color_icons = true,
  indicator_style = 'underline'
}

function M.setup(user_config)
  if user_config then
    M.options = vim.tbl_deep_extend("force", M.options, user_config)
  end
end

return M
