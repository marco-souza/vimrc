call pathogen#infect()

" Default colorscheme.
colorscheme slate

" Better colorscheme for diff.
if &diff
    colorscheme darkspectrum
endif

" Syntax color.
syntax on

" File path on title.
set title

" Line numbering.
set number

" Auto indentation.
set autoindent

" Smart indentation.
set smartindent

" Tab as spaces.
" set expandtab

" Tab space.
set tabstop=4

" Shift width.
set shiftwidth=4

" Cursor line/column number.
set ruler

" Uncomment to enable Undo changes of closed files.
" set undofile

" Puts a floating dot on blank spaces.
set list listchars=tab:\ \ ,trail:·

" Ignore prevent ident on python comments.
inoremap # #

" Paste mode (f2 key).
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" Ignore case when searching.
set ignorecase

" Highlight search results.
set hlsearch

" Toggle highlighting for the current word on and off (Enter).
nnoremap <silent> <expr> <CR> Highlighting()

" Start scrolling when we're 5 lines away from margins.
set scrolloff=5

" Splited windows navigation with crtl+h/j/k/l.
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

" JS and HTML files should only have 2 spaces indentation.
autocmd FileType javascript,html set shiftwidth=2
autocmd FileType javascript,html set tabstop=2

" Colorcolumn for python and javascript files.
autocmd FileType python,javascript set colorcolumn=80
autocmd FileType python,javascript set textwidth=79
autocmd FileType python,javascript highlight ColorColumn ctermbg=darkred

" 72 char limit for Git Commit Message
autocmd FileType gitcommit set textwidth=72
autocmd FileType gitcommit set colorcolumn=73
autocmd FileType gitcommit highlight ColorColumn guibg=Red
autocmd BufNewFile,BufRead *.git/modules/**/COMMIT_EDITMSG     set ft=gitcommit

" Emmet
let g:user_emmet_expandabbr_key='<C-e>'

" Syntastic.
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['python', 'javascript', 'c', 'c++'],
                           \ 'passive_filetypes': [] }
set statusline +=%#warningmsg#
set statusline +=%{SyntasticStatuslineFlag()}
set statusline +=%*

" Toggle highlighting for the current word on and off (Enter).
let g:highlighting = 0
function! Highlighting()
    if g:highlighting == 1 && @/ =~ '^\\<'.expand('<cword>').'\\>$'
        let g:highlighting = 0
    return ":silent nohlsearch\<CR>"
    endif
    let @/ = '\<'.expand('<cword>').'\>'
    let g:highlighting = 1
    return ":silent set hlsearch\<CR>"
endfunction
