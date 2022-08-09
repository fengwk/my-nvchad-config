-- custom/plugins/init.lua has to return a table
-- THe plugin name is github user or organization name/reponame

-- https://nvchad.github.io/config/plugins
-- https://github.com/wbthomason/packer.nvim#specifying-plugins
return {

  -- https://github.com/iamcco/markdown-preview.nvim
  ["iamcco/markdown-preview.nvim"] = {
     run = "cd app && yarn install",
     ft = "markdown",
     config = function()
       require("custom.plugins.configs.markdown_preview")
     end,
   },

  -- https://github.com/md-img-paste-devs/md-img-paste.vim 
  ["md-img-paste-devs/md-img-paste.vim"] = {
     ft = "markdown",
     config = function()
       require("custom.plugins.configs.md_img_paste")
     end,
   },

  -- https://github.com/sgur/vim-editorconfig
  ["sgur/vim-editorconfig"] = {},

}
