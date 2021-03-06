function! StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

function! RipperTagsGenResultMessage(_job, status)
  if (a:status == 0)
    echo "ripper-tags: OK"
  else
    echo "ripper-tags: failed with status " . a:status
  endif
endfunction

function! RipperTagsGen()
  let l:cmd = 'ripper-tags -R --exclude=vendor --exclude=._gems --exclude=._bundle -f .tags'

  if has('nvim')
    execute "silent !" . l:cmd
  else
    call job_start(l:cmd, { "exit_cb": "RipperTagsGenResultMessage" })
  endif
endfunction

function! PrettifyJSON()
  execute "%!python -m json.tool"
endfunction

function! IsLinux()
  return system("uname -s") =~ 'Linux'
endfunction

function! IsMac()
  return system("uname -s") =~ 'Darwin'
endfunction

function! IsWSL()
  return system("uname -r") =~ 'microsoft'
endfunction

if !exists('*ReloadConfig')
  function ReloadConfig()
    source $MYVIMRC
  endfunction
endif

function! AckFromSelection()
  normal! ""gvy
  let l:selection = shellescape(substitute(getreg('"'), '\n\+$', '', ''))
  execute "Ack! -F " . l:selection
endfunction

function! NERDTreeSmart()
  let l:curr_buf = @%
  if l:curr_buf == '' || l:curr_buf == 'Startify' || l:curr_buf =~ 'NERD_tree'
    execute 'NERDTreeToggle'
  else
    execute 'NERDTreeFind'
  endif
endfunction

function! FZFBuflist()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! FZFBufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction

function! ClearCache()
  execute 'silent ! rm -rf ' . $VIMHOME . '/view/*'
  execute 'redraw!'
endfunction
