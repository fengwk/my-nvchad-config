-- there are some defaults for image directory and image name, you can change them

-- 在与当前markdown文件同名的img目录下存储图片
-- vim.api.nvim_set_var("mdip_imgdir", vim.api.nvim_eval("expand('%:t:r') . '/img'"))
vim.api.nvim_set_var("mdip_imgdir", "img")

vim.cmd([[
  autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
]])

