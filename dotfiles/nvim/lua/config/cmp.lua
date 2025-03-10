local lspconfig = require("lspconfig")
local luasnip = require("luasnip")
local cmp = require("cmp")

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body) -- Expand snippets
    end,
  },
  mapping = {
    -- Use Tab for navigating & expanding snippets
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { "i", "s" }),  -- Works in insert & snippet mode

    -- Use Shift+Tab to navigate backwards
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),

    -- Confirm selection with Enter
    ["<CR>"] = cmp.mapping.confirm({ select = true }),

    -- Scroll docs with Ctrl+Up/Down
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
  },
  sources = cmp.config.sources({
    { name = "nvim_lsp" },   -- LSP completion
    { name = "luasnip" },    -- Snippets
    { name = "buffer" },     -- Words from the current buffer
    { name = "path" },       -- File path completion
  }),
})

-- Enable LSP for specific languages
-- Go
lspconfig.gopls.setup({
  on_attach = function(client, bufnr)
    -- Disable file watching notifications from Neovim's internal API
    -- client.server_capabilities.workspace.didChangeWatchedFiles = false
  end,
  settings = {
    gopls = {
      directoryFilters = { "-node_modules", "-.git", "-vendor" },
      analyses = { unusedparams = true, unusedwrite = true },
      staticcheck = true,
    },
  },
})

-- lspconfig.gopls.setup({})
-- lspconfig.rust_analyzer.setup({})  -- Rust
-- lspconfig.pyright.setup({})  -- Python
-- lspconfig.tsserver.setup({})  -- TypeScript
