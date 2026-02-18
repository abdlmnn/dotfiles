# Vim setup (Linux first, Windows separate)

This is a practical setup for the `.vimrc` in this repo.  
Linux is the main target. Windows is documented separately so both setups stay clean.

## Where the config lives

- Linux: `~/.vimrc`
- Windows Vim/GVim: `%USERPROFILE%\\_vimrc`

In this repo, the config file is `vim/.vimrc`.

## What this `.vimrc` needs

Your config uses these plugins/features:
- `vim-plug`
- `fzf` + `fzf.vim`
- `coc.nvim`
- `lightline`, `NERDTree`, themes, and git helpers

So before installing plugins, make sure the system packages are ready.

## Linux setup

Install dependencies first.

Debian/Ubuntu:
```bash
sudo apt update
sudo apt install -y vim git curl nodejs npm fzf ripgrep
```

Notes:
- `nodejs` and `npm` are required for `coc.nvim`.
- `ripgrep` is optional but strongly recommended (better search with FZF workflows).
- Nerd Font is optional (only needed if you want prettier symbols/icons in terminal).

Install `vim-plug`:
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Point your Vim to this repo config:
```bash
ln -sf /home/abdul/dotfiles/vim/.vimrc ~/.vimrc
```

Open Vim and install plugins:
```vim
:PlugInstall
```

Then install Coc language servers:
```vim
:CocInstall coc-pyright coc-tsserver coc-html coc-css coc-json
```

Quick check for Coc runtime:
```bash
node -v
npm -v
```

## Windows setup (separate from Linux)

Install required tools:
1. Vim or GVim
2. Git for Windows
3. Node.js LTS
4. `fzf`
5. `ripgrep`

Using `winget`:
```powershell
winget install Vim.Vim
winget install Git.Git
winget install OpenJS.NodeJS.LTS
winget install junegunn.fzf
winget install BurntSushi.ripgrep.MSVC
```

Install `vim-plug`:
```powershell
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |
  ni "$HOME\\vimfiles\\autoload\\plug.vim" -Force
```

Copy config:
- copy `vim/.vimrc` to `%USERPROFILE%\\_vimrc`

Inside Vim:
```vim
:PlugInstall
:CocInstall coc-pyright coc-tsserver coc-html coc-css coc-json
```

## Keep Linux and Windows config clean

If you want a cleaner long-term setup, split config into shared + OS-specific files.

Recommended structure:
- `~/.vimrc` (or `_vimrc`) as the entry file
- `~/.vimrc.shared`
- `~/.vimrc.linux`
- `~/.vimrc.windows`

Example entry config:
```vim
source ~/.vimrc.shared

if has('win32') || has('win64')
  source ~/.vimrc.windows
else
  source ~/.vimrc.linux
endif
```

What goes where:
- `.vimrc.shared`: common editor settings, plugin block, shared mappings
- `.vimrc.linux`: Linux shell/path/clipboard tweaks
- `.vimrc.windows`: Windows shell/path/clipboard/GVim-specific tweaks

## Small note about icons

Your `.vimrc` has NERDTree icon settings. If icons look broken, either:
- switch terminal font to a Nerd Font, or
- remove icon-specific lines.

## Fast checklist

Linux:
1. Install packages
2. Install `vim-plug`
3. Link `.vimrc`
4. Run `:PlugInstall`
5. Run `:CocInstall coc-pyright coc-tsserver coc-html coc-css coc-json`

Windows:
1. Install tools (Vim/Git/Node/fzf/ripgrep)
2. Install `vim-plug`
3. Copy `_vimrc`
4. Run `:PlugInstall`
5. Run `:CocInstall coc-pyright coc-tsserver coc-html coc-css coc-json`
