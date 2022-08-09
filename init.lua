-- example file i.e lua/custom/init.lua
-- load your options globals, autocmds here or anything .__.
-- you can even override default options here (core/options.lua)

-- 切断将系统剪切板与无名寄存器的关联，可以防止无意操作导致想复制内容的丢失
vim.o.clipboard=""
-- 下面的配置可以将系统剪切板与无名寄存器关联
-- vim.o.clipboard=unnamed

-- vim.api.nvim_command('echo 123')

-- 自动切换输入法
-- vim自动命令参考：http://yyq123.github.io/learn-vim/learn-vi-49-01-autocmd.html
-- 函数在进入插入模式时切换为上次记录的模式，在退出时切换为inactive
function _G.auto_switch_fcitx5(mode)
  if mode == "in" then -- 进入插入模式
    local file, err = io.open("/tmp/nvim-fcitx5-state", "r")
    if err == nil then
      local state = file:read()
      if state == "2" then -- 2说明退出前是active的，应该被重置
        os.execute("fcitx5-remote -o")
      end
      file:close()
    end
  else
    os.execute("fcitx5-remote > /tmp/nvim-fcitx5-state")
    os.execute("fcitx5-remote -c")
  end
end
-- 在相应的时机自动进行函数调用
vim.api.nvim_create_autocmd(
  { "InsertLeave" },
  { pattern = "*", command = ":call v:lua.auto_switch_fcitx5('out')"}
)
vim.api.nvim_create_autocmd(
  { "BufCreate" },
  { pattern = "*", command = ":call v:lua.auto_switch_fcitx5('out')"}
)
vim.api.nvim_create_autocmd(
  { "BufEnter" },
  { pattern = "*", command = ":call v:lua.auto_switch_fcitx5('out')"}
)
vim.api.nvim_create_autocmd(
  { "BufLeave" },
  { pattern = "*", command = ":call v:lua.auto_switch_fcitx5('out')"}
)
vim.api.nvim_create_autocmd(
  { "InsertEnter" },
  { pattern = "*", command = ":call v:lua.auto_switch_fcitx5('in')"}
)

-- 打开时自动定位到上次关闭位置
vim.api.nvim_create_autocmd(
  { "BufReadPost" },
  {pattern = "*", command = [[if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]] }
)
