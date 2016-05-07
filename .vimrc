execute pathogen#infect()

" filetype detection
filetype plugin indent on

" syntax highlighting
syntax on

" Set the default file encoding to UTF-8:
set encoding=utf-8

" solarized theme
let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=dark
colorscheme solarized

set nowrap
set modeline
set list
set list listchars=tab:»·,trail:·

" To control the number of space characters that will be inserted when the tab key is pressed
set tabstop=4

" To change the number of space characters inserted for indentation
set shiftwidth=4
set softtabstop=4

" To insert space characters whenever the tab key is pressed
set expandtab

" display line number
set number

" using mouse
set mouse=a

" show whole files in vimdiff
if &diff                             " only for diff mode/vimdiff
  set diffopt=filler,context:1000000 " filler is default and inserts empty lines for sync
endif

" vsplit navigations
nnoremap <C-K> <C-W><C-K>
nnoremap <C-J> <C-W><C-J>

" no swap files
set noswapfile

" buffer switch
map <C-L> :bnext<CR>
map <C-H> :bprev<CR>

" navigate buffers without saving
set hidden

" Add the g flag to search/replace by default
set gdefault

" Enable the list of buffers at top
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" Enable powerfonts
let g:airline_powerline_fonts = 1

" F4 to toggle highlighting on/off
:set hlsearch
:noremap <F4> :set hlsearch! hlsearch?<CR>

" open ranger on F3
function! RangeChooser()
    let temp = tempname()
    " The option "--choosefiles" was added in ranger 1.5.1. Use the next line
    " with ranger 1.4.2 through 1.5.0 instead.
    "exec 'silent !ranger --choosefile=' . shellescape(temp)
    if has("gui_running")
        exec 'silent !xterm -e ranger --choosefiles=' . shellescape(temp)
    else
        exec 'silent !ranger --choosefiles=' . shellescape(temp)
    endif
    if !filereadable(temp)
        redraw!
        " Nothing to read.
        return
    endif
    let names = readfile(temp)
    if empty(names)
        redraw!
        " Nothing to open.
        return
    endif
    " Edit the first item.
    exec 'edit ' . fnameescape(names[0])
    " Add any remaning items to the arg list/buffer list.
    for name in names[1:]
        exec 'argadd ' . fnameescape(name)
    endfor
    redraw!
endfunction
command! -bar RangerChooser call RangeChooser()
nnoremap <F3> :RangerChooser<CR>

" syntastic reccomended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" nerd commenting using Ctrl+space
nnoremap <C-@> :call NERDComment(0,"toggle")<CR>
vnoremap <C-@> :call NERDComment(0,"toggle")<CR>

" syntastic window height
let g:syntastic_loc_list_height=3

" toggle slovak/english spellcheck
map <silent> <F12>   :call SpellCycle()

function SpellCycle()
    if &spell
        if &spelllang == 'en'
            set spelllang=sk spell
            echo 'Spellcheck: Slovak'
        else
            set nospell
            echo 'Spellcheck: (off)'
        end
    else
        set spelllang=en spell
        echo 'Spellcheck: English'
    endif
endfunction
