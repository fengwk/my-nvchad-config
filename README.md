# My Nvchad Config

个人nvchad配置。

# Installation

1、移除可能存在的nvim缓存：

- Linux：`~/.local/share/nvim`
- Macos： `~\AppData\Local\nvim`
- Windows：`~\AppData\Local\nvim-data`

2、安装Nvchad：

- Linux / Macos

```shell
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```

- Windows

```powershell
git clone https://github.com/NvChad/NvChad $HOME\AppData\Local\nvim --depth 1
nvim
```

3、更新Nvchad：`<leader> + uu`

4、安装配置

- Linux / Macos

```shell
git clone git@github.com:fengwk/my-nvchad-config.git ~/.config/nvim/lua/custom
```

- Windows

```powershell
git clone git@github.com:fengwk/my-nvchad-config.git $HOME\AppData\Local\nvim\lua\custom
```