"" ---
"" Initial Settings
    " Encoding of file
    scriptencoding utf-8
    set encoding=utf-8

    " set nocompatible
    " set wildmode=longest:full,full
    " set wildmenu


"" ---
"" Plugins
    "" Using Plug
    call plug#begin()

        "" Themes & UI
        Plug 'monkoose/boa.vim'
        Plug 'stephenmckinney/vim-solarized-powerline'

        "" Plugins
        Plug 'severin-lemaignan/vim-minimap'    " Vim Minimap
        Plug 'Lokaltog/vim-powerline'           " Powerline
        Plug 'wincent/command-t'                " Command-T
        Plug 'lilydjwg/colorizer'               " Colorizer
        Plug 'KabbAmine/vCoolor.vim'            " vCoolor
        Plug 'scrooloose/nerdcommenter'         " NERDCommenter
        Plug 'mattn/emmet-vim'                  " Emmet
        Plug 'Yggdroot/indentLine'              " indent guide
        Plug 'tpope/vim-pathogen'               " Pathogen (plugins folder)
        Plug 'tpope/vim-fugitive'               " Fugitive (vim)
        Plug 'scrooloose/nerdtree'              " NERDTree
        Plug 'jistr/vim-nerdtree-tabs'          " NERDTree Tabs
        Plug 'vim-syntastic/syntastic'          " Syntastic (syntax checker)

    call plug#end()


    "" Plugin Settings


        "" Vim minimap
            " let g:minimap_show='<leader>ms'
            let g:minimap_update='<leader>mu'
            " let g:minimap_close='<leader>gc'
            let g:minimap_toggle='<leader>mm'

        "" CommandT
            let g:CommandTMaxFiles=200000
            let g:CommandTMaxDepth=8
            let g:CommandTFileScanner="watchman"
            " let g:CommandTFileScanner="find"
            let g:CommandTEncoding='utf-8'

        "" Powerline
            let g:Powerline_symbols = 'fancy'
            let g:Powerline_symbols = 'fancy'
            let g:Powerline_dividers_override = ['', '', '', '']
            let g:Powerline_symbols_override = { 'BRANCH': '', 'LINE': '', 'RO': '' }
            let g:Powerline_theme='short'
            let g:Powerline_colorscheme='solarized256_dark'
            set laststatus=2    " Always show the statusline
            "" set t_Co=256        " Explicitly tell Vim that the terminal supports 256 colors

        "" vCoolor
            let g:vcoolor_custom_picker = '/bin/kcolorchooser --print'
            let g:vcoolor_disable_mappings = 1
            let g:vcoolor_map = '<C-c>'
            " let g:vcool_ins_rgba_map = '<C-c>'
            " nnorema <C-M-c> :VCoolor<CR>
            " imap <C-M-c> <ESC>:VCoolor<CR>

        " IndentLine
            let g:indentLine_char = '|' " '┆'
            " Vim
            let g:indentLine_color_term = 239
            "GVim
            " let g:indentLine_color_gui = '#999999'


        "" NERDTree
            nmap <silent> <C-\> :NERDTreeTabsToggle<CR>
            let NERDTreeQuitOnOpen=1


        "" NERDCommenter
            filetype plugin on
            " Add spaces after comment delimiters by default
            let g:NERDSpaceDelims = 1
            " Use compact syntax for prettified multi-line comments
            let g:NERDCompactSexyComs = 1
            " Align line-wise comment delimiters flush left instead of following code indentation
            let g:NERDDefaultAlign = 'left'
            " Set a language to use its alternate delimiters by default
            let g:NERDAltDelims_java = 1
            " Add your own custom formats or override the defaults
            let g:NERDCustomDelimiters = {
            \    'c': { 'left': '/**','right': '*/' },
            \    'css': { 'left': '/*','right': '*/' },
            \    'js': { 'left': '/**','right': '*/' },
            \    'html': { 'left': '<!--','right': '-->' },
            \    'xml': { 'left': '<!--','right': '-->' }
            \}
            " Allow commenting and inverting empty lines (useful when commenting a region)
            let g:NERDCommentEmptyLines = 1
            " Enable trimming of trailing whitespace when uncommenting
            let g:NERDTrimTrailingWhitespace = 1


        "" Emmet
            let g:user_emmet_mode='a'
            let g:user_emmet_expandabbr_key='<C-e>'

        "" Syntstic
            let g:syntastic_mode_map = { 'mode': 'active',
                                    \ 'active_filetypes': ['python', 'javascript', 'c', 'c++', 'ruby', 'go', 'xml'],
                                    \ 'passive_filetypes': [] }

            set statusline +=%#warningmsg#
            set statusline +=%{SyntasticStatuslineFlag()}
            set statusline +=%*



"" ---
"" Personal Settings
    " Hotkeys
        "" Close respective chars
        ino " ""<left>
        ino ' ''<left>
        ino ` ``<left>
        ino (       ()<left>
        ino {<CR>   {<CR>}<Esc>ko
        ino [       []<left>
        ino {       {}<left>
        ino {{      {{  }}<left><left><left>

        "" Prevent to repeat a char
        ino ()      ()<left>
        ino []      []<left>
        ino {}      {}<left>

        "" Aliases
        ino @l      console.log();<left><left>
        ino (=      (data) => {<CR>}<Esc>ko


    "" Editor Settings

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
        set expandtab

        " Tab space.
        set tabstop=4

        " Shift width.
        set shiftwidth=4

        " Cursor line/column number.
        set ruler

        " Uncomment to enable Undo changes of closed files.
        set undofile

        " Puts a floating dot on blank spaces.
        set list listchars=tab:\ \ ,trail:·

        " Ignore prevent ident on python comments.
        " inoremap # #

        " Paste mode (f2 key).
        nnoremap <F2> :set invpaste paste?<CR>
        set pastetoggle=<F2>
        set showmode

        " Ignore case when searching.
        set ignorecase

        " Hide/show by indentation
        set foldmethod=indent

        " Highlight search results.
        set hlsearch

        " Show matches search results.
        set is

        " Toggle highlighting for the current word on and off (Enter).
        nnoremap <silent> <expr> <CR> Highlighting()

        " Start scrolling when we're 10 lines away from margins.
        set scrolloff=15

        " Splited windows navigation with crtl+h/j/k/l.
        nmap <silent> <C-h> :wincmd h<CR>
        nmap <silent> <C-j> :wincmd j<CR>
        nmap <silent> <C-k> :wincmd k<CR>
        nmap <silent> <C-l> :wincmd l<CR>

        " Splited windows resizing with crtl+h/j/k/l.
        " Increment size
        nmap <silent> <C-z> :exe "vertical resize ".(winwidth(0) * 2)<CR>
        nmap <silent> <C-a> :exe "resize ".(winheight(0) * 2)<CR>

        "" Remove unwanted spaces
        autocmd BufWritePre * %s/\s\+$//e

        " JS and HTML files should only have 2 spaces indentation.
        ""autocmd FileType xml,html,css,ruby set shiftwidth=2
        ""autocmd FileType xml,html,css,ruby set tabstop=2

        " Colorcolumn for python and javascript files.
        autocmd FileType python,javascript set colorcolumn=80
        autocmd FileType python,javascript set textwidth=79
        autocmd FileType python,javascript highlight ColorColumn ctermbg=darkred

        " 80 char limit for Git Commit Message
        autocmd FileType gitcommit set textwidth=79
        autocmd FileType gitcommit set colorcolumn=80
        autocmd FileType gitcommit highlight ColorColumn guibg=Red
        autocmd BufNewFile,BufRead *.git/modules/**/COMMIT_EDITMSG     set ft=gitcommit

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

