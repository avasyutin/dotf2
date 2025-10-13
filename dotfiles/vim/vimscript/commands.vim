" Commands for minpac.`
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

" Open NERDTree and highlight current file.
command! NERDTreeSmart call NERDTreeSmart()

" Generate .tags file for ruby/rails projects.
command! RipperTagsGen call RipperTagsGen()

" Reload VIM config.
command! ReloadConfig call ReloadConfig()

" Prettify JSON.
command! PrettifyJSON call PrettifyJSON()

" Clear Views cache
command! ClearCache call ClearCache()
