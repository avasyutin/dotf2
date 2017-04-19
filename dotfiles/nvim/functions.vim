function StripTrailingWhitespaces()
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

function RipperTagsGenResultMessage(_job, status)
  if (a:status == 0)
    echo "ripper-tags: OK"
  else
    echo "ripper-tags: failed with status " . a:status
  endif
endfunction

function RipperTagsGen()
  let l:cmd = 'ripper-tags -R --exclude=vendor --exclude=._gems --exclude=._bundle -f .tags'

  if has('nvim')
    execute "silent !" . l:cmd
  else
    call job_start(l:cmd, { "exit_cb": "RipperTagsGenResultMessage" })
  endif
endfunction

function RnuToggle()
  if(&relativenumber == 1)
    set nornu
  else
    set rnu
  endif
endfunc

function IsLinux()
  return system("uname -s") == 'Linux'
endfunction
