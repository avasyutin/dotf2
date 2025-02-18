return {
  -- Common plugins
  { "tpope/vim-sensible" },
  { "vim-scripts/L9" },
  { "tomtom/tlib_vim" },
  { "marcweber/vim-addon-mw-utils" },
  { "tmux-plugins/vim-tmux-focus-events" },

  -- Editing enhancements
  { "Raimondi/delimitMate" },
  { "tpope/vim-endwise" },
  { "tpope/vim-abolish" },
  { "terryma/vim-expand-region" },
  { "tpope/vim-surround" },
  { "godlygeek/tabular" },

  -- UI Enhancements
  { "chriskempson/base16-vim" },
  { "tomasr/molokai" },
  { "vague2k/vague.nvim" },
  { "EdenEast/nightfox.nvim" },

  -- Git integration
  { "airblade/vim-gitgutter" },
  { "tpope/vim-fugitive" },

  -- Project navigation
  { "mhinz/vim-startify" },
  { "scrooloose/nerdtree" },

  -- Programming-related
  { "scrooloose/nerdcommenter" },
  { "hashivim/vim-terraform" },

  -- Autocompletion
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",            -- LSP completion
      "neovim/nvim-lspconfig",           -- LSP configurations
      "hrsh7th/cmp-buffer",              -- Buffer words completion
      "hrsh7th/cmp-path",                -- File path completion
      "saadparwaiz1/cmp_luasnip",        -- Snippet completion
      "L3MON4D3/LuaSnip",                -- Snippet engine
      "rafamadriz/friendly-snippets",    -- Predefined snippets
      "nvim-treesitter/nvim-treesitter", -- Better syntax parsing
    },
  },

  -- Snippets
  { "L3MON4D3/LuaSnip", dependencies = { "rafamadriz/friendly-snippets" } },

  -- Searching
  { "mileszs/ack.vim" },

  -- AI
  require("plugins.avante"),

  -- Optional plugins (uncomment to enable)
  -- { "edkolev/tmuxline.vim" },
  -- { "itchyny/lightline.vim" },
}
