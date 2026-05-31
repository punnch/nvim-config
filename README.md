# 🟩 punnch's neovim config

A clean, fast Neovim setup for Go, Lua, and Python development.

## 📦 Plugins

| Plugin | Purpose |
|---|---|
| [base46](https://github.com/AvengeMedia/base46) | Themes |
| [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua) | File explorer |
| [bufferline](https://github.com/akinsho/bufferline.nvim) | Buffer tabs |
| [lualine](https://github.com/nvim-lualine/lualine.nvim) | Statusline |
| [telescope](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |
| [toggleterm](https://github.com/akinsho/toggleterm.nvim) | Terminal |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP |
| [mason](https://github.com/mason-org/mason.nvim) | LSP installer |
| [conform](https://github.com/stevearc/conform.nvim) | Formatting |
| [trouble](https://github.com/folke/trouble.nvim) | Diagnostics |
| [gitsigns](https://github.com/lewis6991/gitsigns.nvim) | Git indicators |
| [treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting |
| [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim) | Indent guides |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Autocompletion |
| [autopairs](https://github.com/windwp/nvim-autopairs) | Auto brackets |
| [comment](https://github.com/numToStr/Comment.nvim) | Commenting |
| [mini.bufremove](https://github.com/echasnovski/mini.bufremove) | Buffer delete |
| [smear-cursor](https://github.com/sphamba/smear-cursor.nvim) | Cursor animation |

## ⌨️ Keymaps

### General
| Key | Action |
|---|---|
| `<C-s>` | Save |
| `<Esc>` | Clear search highlight |
| `<leader>e` | Show diagnostic float |
| `[d` / `]d` | Prev / Next diagnostic |

### Navigation
| Key | Action |
|---|---|
| `<C-h/j/k/l>` | Move between windows |
| `<C-Up/Down/Left/Right>` | Resize windows |
| `<Tab>` | Next buffer |
| `<S-Tab>` | Prev buffer |
| `<leader>x` | Delete buffer |

### File Explorer
| Key | Action |
|---|---|
| `<C-n>` | Toggle nvim-tree |

### Telescope
| Key | Action |
|---|---|
| `<leader>ff` | Find files |
| `<leader>fw` | Live grep |
| `<leader>fh` | Find hidden files |
| `<leader>fr` | Recent files |
| `<leader>fb` | Buffers |
| `<leader>fd` | Diagnostics |
| `<leader>fc` | Git commits |

### Terminal
| Key | Action |
|---|---|
| `<A-h>` | Toggle horizontal terminal |
| `<A-f>` | Toggle float terminal |
| `<Esc>` | Exit terminal mode |

### LSP
| Key | Action |
|---|---|
| `K` | Hover documentation |
| `gd` | Go to definition |
| `<leader>ca` | Code action |

### Git
| Key | Action |
|---|---|
| `]h` / `[h` | Next / Prev hunk |
| `<leader>hs` | Stage hunk |
| `<leader>hr` | Reset hunk |
| `<leader>hp` | Preview hunk |
| `<leader>hb` | Blame line |

### Diagnostics
| Key | Action |
|---|---|
| `<leader>d` | Toggle trouble panel |

## 🎨 Theme

[base46-gruvbox](https://github.com/AvengeMedia/base46)

## 🛠️ LSP / Formatters

| Language | LSP | Formatter |
|---|---|---|
| Go | gopls | goimports |
| Lua | lua_ls | stylua |

## 📋 Requirements

- Neovim >= 0.10
- Git
- [fd](https://github.com/sharkdp/fd) — for telescope file search
- [ripgrep](https://github.com/BurntSushi/ripgrep) — for telescope live grep
- [lazygit](https://github.com/jesseduffield/lazygit) — optional
- A Nerd Font — Mononoki Nerd Font Mono recommended
