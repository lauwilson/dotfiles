" [vim-plug SETTINGS]

call plug#begin('~/.vim/plugged')

" [THEMES]
Plug 'kaicataldo/material.vim'
Plug 'w0ng/vim-hybrid'

" [PLUGINS]

" NERDTree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" ctrl-p 
"Plug '
"
" AutoComplete plugin
" ??????

call plug#end()

" [GENERAL SETTINGS]
syntax on
set showcmd      " Shows the vim command as you are typing it
set number       " Displays line numbers
set expandtab    " Converts Tabs to Spaces
set tabstop=4    " Sets the Tab size
set shiftwidth=4 " Sets the indent level
set autoindent   " Enable auto-indent
set cindent      " Sets auto-indent rules to C-like indentation
set backspace=indent,eol,start  " Enables normal editor backspace behavior
"let &t_Co=256     " Enable 256 colors in terminal (if supported)
set t_Co=256

let g:airline_powerline_fonts = 1 " Enables powerline fonts in Terminal VIM


" [THEME SETTINGS]

set background=dark

if (has("termguicolors"))
    set termguicolors
endif

"" IMPORTANT: Uncomment one of the following lines to force
"" using 256 colors (or 88 colors) if your terminal supports it,
"" but does not automatically use 256 colors by default.
"" set t_Co=88
"if (&t_Co == 256 || &t_Co == 88) && !has('gui_running') &&
"    \ filereadable(expand("$HOME/.vim/plugin/guicolorscheme.vim"))
"    " Use the guicolorscheme plugin to makes 256-color or 88-color
"    " terminal use GUI colors rather than cterm colors.
"    runtime! plugin/guicolorscheme.vim
"    GuiColorScheme base16-ocean
"else
"    " For 8-color 16-color terminals or for gvim, just use the
"    " regular :colorscheme command.
"    colorscheme base16-ocean
"endif

"let g:solarized_termcolors=256
"let g:solarized_visibility="high"
"let g:solarized_contrast="high"
"let base16colorspace=256
"
"let g:hybrid_custom_term_colors = 1
colorscheme material

" [CUSTOM KEYBINDS]
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

" [PLUGIN SETTINGS] Airline
set laststatus=2

" [PLUGIN SETTINGS] NERDTree
noremap :nt :NERDTreeToggle

" [PLUGIN SETTINGS] YouCompleteMe
"let g:ycm_python_binary_path = '/usr/local/bin/python3'
"let g:ycm_global_ycm_extra_conf = '~/.dotfiles/vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
