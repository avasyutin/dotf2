local luasnip = require("luasnip")
require("luasnip.loaders.from_vscode").lazy_load() -- Load VSCode snippets

-- Optionally load only Ruby snippets
require("luasnip.loaders.from_vscode").lazy_load({ paths = { "~/.local/share/nvim/lazy/friendly-snippets" } })

-- Load custom snippets from ~/.config/nvim/lua/snippets/
require("luasnip.loaders.from_vscode").lazy_load({ paths = { vim.fn.expand("~/.config/nvim/lua/snippets") } })
