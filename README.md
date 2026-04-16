# Neovim Config

Personal Neovim configuration built from scratch.

## Stack

- Plugin manager: lazy.nvim
- Theme: catppuccin
- File tree: neo-tree.nvim
- Fuzzy finder: telescope.nvim
- Syntax: nvim-treesitter
- LSP: mason.nvim + nvim-lspconfig
- Completion: blink.cmp + LuaSnip
- Formatting: conform.nvim
- Git: gitsigns.nvim
- Diagnostics UI: trouble.nvim
- Key hints: which-key.nvim

## Languages supported (LSP)

- Lua (lua_ls)
- TypeScript / JavaScript (ts_ls)
- Python (basedpyright + ruff)
- JSON (jsonls)
- YAML (yamlls)
- C / C++ (clangd)

## Requirements

- Neovim >= 0.11
- Node.js (for TS/JSON/YAML language servers)
- A Nerd Font for icons
- git, curl, make, a C compiler

## Installation

Backup any existing config:

    mv ~/.config/nvim ~/.config/nvim.bak

Clone this repo:

    git clone <your-repo-url> ~/.config/nvim

Start Neovim — lazy.nvim will auto-install all plugins:

    nvim

Mason will install LSPs, formatters, and linters on first launch.
