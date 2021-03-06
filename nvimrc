" [vim-plug Package Manager SETTINGS]
    call plug#begin('~/.config/nvim/nvim-bundle')
         " [THEMES]
         " Solarized Theme
         "Plugin 'altercation/vim-colors-solarized'
     
         " Vim-Kolor
         "Plugin 'zeis/vim-kolor'
     
         " Base-16
         Plug 'chriskempson/base16-vim'

         " [INSTALLED PLUGINS]
         " NERDTree
         Plug 'scrooloose/nerdtree'
     
         " Airline
         Plug 'vim-airline/vim-airline'
         Plug 'vim-airline/vim-airline-themes'

         " Neomake Linter
         Plug 'neomake/neomake'

         " Quickfix Toggler
         Plug 'milkypostman/vim-togglelist'

    call plug#end()

" [GENERAL SETTINGS]
    syntax on
    set showcmd      " Shows the vim command as you are typing it
    set relativenumber " Displays relative line numbers
    set number       " Enables absolute line number for selected line
    set expandtab    " Converts Tabs to Spaces
    set tabstop=4    " Sets the Tab size
    set shiftwidth=4 " Sets the indent level
    set autoindent   " Enable auto-indent
    set cindent      " Sets auto-indent rules to C-like indentation
    set backspace=indent,eol,start  " Enables normal editor backspace behavior
    "let &t_Co=256     " Enable 256 colors in terminal (if supported)
    "set t_Co=256
    let g:airline_powerline_fonts = 1 " Enables powerline fonts in Terminal VIM



" [THEME SETTINGS]
    set background=dark
    let base16colorspace=256
    colorscheme base16-default

    hi CursorLineNr ctermfg=5

" [CUSTOM KEYBINDS]
    " Fix for xterm-256color terminal info processing Ctrl+H as Backspace
    nmap <BS> <C-W>h
    
    " Map Leader key to Space
    map <Space> \

    inoremap <C-h> <left>
    inoremap <C-j> <down>
    inoremap <C-k> <up>
    inoremap <C-l> <right>

    noremap <C-h> <C-w>h
    noremap <C-j> <C-w>j
    noremap <C-k> <C-w>k
    noremap <C-l> <C-w>l

    noremap <C-;> <C-w>=

    noremap <F1> :tabprevious<CR>
    noremap <F2> :tab<CR>
    noremap <Leader>` :lopen<CR>

    " Split Resizing
    noremap <Leader>] :5winc ><CR>
    noremap <Leader>[ :5winc <<CR>

    " Easier clipboard managmenet
    noremap <Leader>y "+y<CR>
    noremap <Leader>p "+p

" [PLUGIN SETTINGS] Airline
    set laststatus=2
    let g:airline_theme='base16'

    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

    " unicode symbols
    let g:airline_left_sep = '»'
    let g:airline_left_sep = '▶'
    let g:airline_right_sep = '«'
    let g:airline_right_sep = '◀'
    let g:airline_symbols.linenr = '␊'
    let g:airline_symbols.linenr = '␤'
    let g:airline_symbols.linenr = '¶'
    let g:airline_symbols.branch = '⎇'
    let g:airline_symbols.paste = 'ρ'
    let g:airline_symbols.paste = 'Þ'
    let g:airline_symbols.paste = '∥'
    let g:airline_symbols.whitespace = 'Ξ'

    " airline symbols
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = ''

" [PLUGIN SETTINGS] NERDTree
    noremap :nt :NERDTreeToggle


" [PLUGIN SETTINGS] Neomake
    highlight Neomake_Error ctermfg=1 ctermbg=18 guifg=#ab4642 guibg=#282828
    highlight Neomake_Warning ctermfg=3 ctermbg=18 guifg=#f7ca88 guibg=#282828

    let g:neomake_warning_sign = {
        \ 'texthl': 'Neomake_Warning'
        \ }
    let g:neomake_error_sign = {
        \ 'text': '>>',
        \ 'texthl': 'Neomake_Error'
        \ }
    
    " Auto-Make on write
    autocmd! BufWritePost * Neomake

    " C++ Maker
    let g:neomake_cpp_gcc_maker = {
        \ 'args': ['-fsyntax-only', '-W', '-Wall', '-Wextra', '-Wpedantic'],
        \ 'exe' : 'g++-6',
        \ 'errorformat':
            \ '%-G%f:%s:,' .
            \ '%-G%f:%l: %#error: %#(Each undeclared identifier is reported only%.%#,' .
            \ '%-G%f:%l: %#error: %#for each function it appears%.%#,' .
            \ '%-GIn file included%.%#,' .
            \ '%-G %#from %f:%l\,,' .
            \ '%f:%l:%c: %trror: %m,' .
            \ '%f:%l:%c: %tarning: %m,' .
            \ '%f:%l:%c: %m,' .
            \ '%f:%l: %trror: %m,' .
            \ '%f:%l: %tarning: %m,'.
            \ '%f:%l: %m',
        \ }

    let g:neomake_cpp_enabled_makers = ['gcc']

" [PLUGIN SETTINGS] vim-togglelist
    "let g:toggle_list_no_mappings = 1
