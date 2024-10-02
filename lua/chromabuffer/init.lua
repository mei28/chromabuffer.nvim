local M = {}

local config = require('chromabuffer.config')
local highlights = require('chromabuffer.highlights')

function M.setup(user_config)
  config.setup(user_config)
end

function M.get_bufferline_highlights()
  return highlights.get_dynamic_highlights()
end

return M
