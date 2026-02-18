# Neovim Setup on Windows

This folder contains my personal Neovim setup for Windows.
The goal is simple: keep the editor fast, keep the terminal clean, and keep the workflow close to what I use on Linux.

## Environment

- OS: Windows
- Shell: PowerShell (7+)
- Terminal: Windows Terminal
- Editor: Neovim

## What This Setup Focuses On

- A minimal, readable UI
- Fast editing with practical defaults
- A Linux-like terminal experience on Windows
- Plugins that solve real workflow needs without adding noise

## PowerShell Tooling

These are the tools I use around Neovim:

- PowerShell 7+
- Scoop
- Git for Windows
- Oh My Posh
- Terminal Icons
- PSReadLine
- z (directory jumping)
- PSFzf

### Useful links

- PowerShell install:
  <https://learn.microsoft.com/en-us/powershell/scripting/install/install-powershell-on-windows?view=powershell-7.5>
- Oh My Posh docs:
  <https://ohmyposh.dev/docs/installation/windows>
- Oh My Posh GitHub:
  <https://github.com/JanDeDobbeleer/oh-my-posh>

Note: I will document the full PowerShell profile/config in a separate section later.

## Neovim Plugins Used

### `mini.icons`

Adds lightweight file and folder icons inside Neovim.

- <https://github.com/nvim-mini/mini.icons>

### `mini.surround`

Fast surround editing (add, delete, replace surrounding characters).

- <https://github.com/nvim-mini/mini.surround>

## Colorscheme

### Solarized Osaka

I use Solarized Osaka for a clean and comfortable look.
It is inspired by Takuya Matsuyama's style.

- Theme:
  <https://github.com/craftzdog/solarized-osaka.nvim>
- Inspiration:
  <https://github.com/craftzdog>

## Current Status

- Windows Neovim setup is active and used daily
- Core plugin choices are stable
- Shell customization docs are still in progress

## Roadmap

- Add full PowerShell profile setup
- Document installation steps from scratch (fresh Windows machine)
- Add keymaps and plugin-by-plugin config notes

## Inspiration

This setup is inspired by clean, minimal development environments, especially Takuya Matsuyama's workflow style.
