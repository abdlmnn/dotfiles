# VS Code Setup (Vim / LazyVim Style)

This folder documents my VS Code setup that tries to feel close to Vim/LazyVim.
The idea is to keep VS Code convenience, but with a keyboard-first workflow and a clean editor layout.

## Goal

- Vim-like editing inside VS Code
- LazyVim-style layout and navigation habits
- Minimal UI distractions
- Fast workflow without depending on mouse

## Platform

- OS: Windows
- Editor: VS Code
- Style target: Vim/LazyVim-like experience

## Core Extensions

These are the main extensions for the setup:

- `vscodevim.vim` (Vim motions and modes)
- `ms-vscode.cpptools` / language extensions as needed
- `esbenp.prettier-vscode` (formatting)
- `usernamehw.errorlens` (inline diagnostics)
- `eamodio.gitlens` (git context)
- `yzhang.markdown-all-in-one` (optional for docs)

If a plugin is not needed for your daily work, remove it. Keep this lean.

## Layout Style (LazyVim-like)

What I try to mirror from LazyVim:

- Explorer/side panel used intentionally, not always open
- File switching through fuzzy search (`Ctrl+P`)
- Problem panel and terminal as bottom tools
- Tabs and splits managed with keyboard shortcuts
- Consistent theme and icon set for quick visual parsing

## Recommended VS Code Settings Direction

- Enable Vim extension and leader-based key habits
- Keep relative line numbers on
- Reduce UI noise (breadcrumbs/minimap/activity options based on preference)
- Use format on save
- Keep terminal easy to toggle and reuse

## Workflow Notes

- Primary navigation: Vim motions + search
- Open files: quick open (`Ctrl+P`)
- Commands: command palette (`Ctrl+Shift+P`)
- Split editing: keyboard-first
- Git checks: Source Control panel + GitLens

## Current Status

- Usable daily setup
- Vim behavior is the main interaction model
- Layout is tuned to feel close to LazyVim, within VS Code limits

## Roadmap

- Add exact `settings.json` and `keybindings.json` examples
- Document leader key mappings used in VS Code Vim
- Add language-specific extension presets (web/python/cpp)

## Notes

This is not a full Neovim replacement.
It is a pragmatic setup for when I want Vim-like flow inside VS Code.
