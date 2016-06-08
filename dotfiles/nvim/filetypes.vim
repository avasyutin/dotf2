" Try to detect filetypes.
filetype on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Copy indent from current line when starting a new line.
set autoindent

" Indentetion settings
autocmd Filetype html         setlocal ts=2 sw=2 expandtab list
autocmd Filetype yaml         setlocal ts=2 sw=2 expandtab list
autocmd Filetype scala        setlocal ts=2 sw=2 expandtab list colorcolumn=110
autocmd Filetype java         setlocal ts=2 sw=2 expandtab list colorcolumn=110
autocmd Filetype python       setlocal ts=4 sw=4 expandtab list colorcolumn=110
autocmd Filetype ruby         setlocal ts=2 sw=2 expandtab list colorcolumn=110
autocmd Filetype eruby        setlocal ts=2 sw=2 expandtab list colorcolumn=110
autocmd Filetype stylus       setlocal ts=2 sw=2 expandtab list
autocmd Filetype vim          setlocal ts=2 sw=2 expandtab list colorcolumn=110
autocmd Filetype json         setlocal ts=2 sw=2 expandtab list
autocmd Filetype slim         setlocal ts=2 sw=2 expandtab list
autocmd Filetype jade         setlocal ts=2 sw=2 expandtab list
autocmd Filetype sass         setlocal ts=2 sw=2 expandtab list colorcolumn=110
autocmd Filetype css          setlocal ts=2 sw=2 expandtab list colorcolumn=110
autocmd Filetype mustache     setlocal ts=2 sw=2 expandtab list
autocmd Filetype javascript   setlocal ts=4 sw=4 expandtab list colorcolumn=110
autocmd Filetype coffeescript setlocal ts=2 sw=2 expandtab list colorcolumn=110
autocmd Filetype crystal      setlocal ts=2 sw=2 expandtab list colorcolumn=110
autocmd Filetype cucumber     setlocal ts=2 sw=2 expandtab list colorcolumn=110