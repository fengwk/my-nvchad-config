-- 自定义配置模块
local M = {}

-- 自定义ui，默认在core.default_config
M.ui = {
  theme = "onedark",
}

-- 插件定义
M.plugins = {
   user = require "custom.plugins"
}

-- 导入自定义映射，默认的配置在core.mappings
M.mappings = require "custom.mappings"

return M
