set nocompatible

if has('nvim')
  let $VIMHOME='$HOME/.config/nvim'
else
  let $VIMHOME='$HOME/.vim'
endif

source $VIMHOME/deps.vim
source $VIMHOME/functions.vim
source $VIMHOME/commands.vim
source $VIMHOME/general.vim
source $VIMHOME/ui.vim
source $VIMHOME/plugins.vim
source $VIMHOME/filetypes.vim
source $VIMHOME/keys.vim
