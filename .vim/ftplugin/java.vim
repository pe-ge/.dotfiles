" run java program with F11
nmap <F11> :w<enter>:!javac %; java `basename % .java`<CR>

autocmd FileType java setlocal omnifunc=javacomplete#Complete
nmap <F6> <Plug>(JavaComplete-Imports-Add)
imap <F6> <Plug>(JavaComplete-Imports-Add)
nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
