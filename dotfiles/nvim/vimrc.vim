set nocompatible

if has('nvim')
  " Now we want to migrate nvim to lua config
  " let $VIMHOME='$HOME/.config/nvim'
else
  let $VIMHOME='$HOME/.vim'
  source $VIMHOME/deps.vim
  source $VIMHOME/functions.vim
  source $VIMHOME/commands.vim
  source $VIMHOME/general.vim
  source $VIMHOME/ui.vim
  source $VIMHOME/plugins.vim
  source $VIMHOME/filetypes.vim
  source $VIMHOME/keys.vim
endif
