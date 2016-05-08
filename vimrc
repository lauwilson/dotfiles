" [VUNDLE Package Manager SETTINGS]

" set the runtime path to include Vundle and initialize
set nocompatible              " be iMproved, required
filetype off                  " required for compatibility with old VIM versions
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')

    " let Vundle manage Vundle, required
    Plugin 'gmarik/Vundle.vim'

    " [DEFAULT PLUGINS] (Remove if unwated)

    " plugin on GitHub repo
    " Plugin 'tpope/vim-fugitive'

    " plugin from http://vim-scripts.org/vim/scripts.html
    " Plugin 'L9'

    " Git plugin not hosted on GitHub
    " Plugin 'git://git.wincent.com/command-t.git'

    " git repos on your local machine (i.e. when working on your own plugin)
    " Plugin 'file:///home/gmarik/path/to/plugin'
    "
    " The sparkup vim script is in a subdirectory of this repo called vim.
    " Pass the path to set the runtimepath properly.
    " Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

    " Avoid a name conflict with L9
    " Plugin 'user/L9', {'name': 'newL9'}
    
    " [THEMES]
    " Solarized Theme
    Plugin 'altercation/vim-colors-solarized'

    " Vim-Kolor
    Plugin 'zeis/vim-kolor'

    " Base-16
    Plugin 'chriskempson/base16-vim'
    
    " [INSTALLED PLUGINS]

    " NERDTree
    Plugin 'scrooloose/nerdtree'

    " Airline
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'

    "Powerline font 
    Plugin 'kien/ctrlp.vim'

    " YouCompleteMe
    Plugin 'Valloric/YouCompleteMe'

    " Wakatime


    " All of your Plugins must be added before the following line
    call vundle#end()            " required
    filetype plugin indent on    " required
    " To ignore plugin indent changes, instead use:
    "filetype plugin on
    "
    " Brief help
    " :PluginList       - lists configured plugins
    " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
    " :PluginSearch foo - searches for foo; append `!` to refresh local cache
    " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
    "
    " see :h vundle for more details or wiki for FAQ
    " Put your non-Plugin stuff after this line

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
let base16colorspace=256
colorscheme base16-default

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

" [PLUGIN SETTINGS] YouCompleteMe
let g:ycm_python_binary_path = '/usr/local/bin/python3'
let g:ycm_global_ycm_extra_conf = '~/.dotfiles/vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
