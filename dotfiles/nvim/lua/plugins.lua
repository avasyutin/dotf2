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
  { "fatih/vim-go" },

  -- Autocompletion
  { "ervandew/supertab" },

  -- Snippets
  { "garbas/vim-snipmate", dependencies = { "marcweber/vim-addon-mw-utils" } },
  { "marcweber/vim-addon-mw-utils" },

  -- Searching
  { "mileszs/ack.vim" },

  -- Optional plugins (uncomment to enable)
  -- { "edkolev/tmuxline.vim" },
  -- { "itchyny/lightline.vim" },
  -- { "elixir-editors/vim-elixir" },
}
