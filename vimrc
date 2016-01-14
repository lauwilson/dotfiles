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
    
    " [INSTALLED PLUGINS]

    " Solarized Theme
    Plugin 'altercation/vim-colors-solarized'

    " NERDTree
    Plugin 'scrooloose/nerdtree'

    " Airline
    Plugin 'bling/vim-airline'

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
set t_Co=256     " Enable 256 colors in terminal (if supported)

let g:airline_powerline_fonts = 1 " Enables powerline fonts in Terminal VIM

" [THEME SETTINGS]
set background=dark
let g:solarized_visibility = "high"
let g:solarized_contract = "high"
let g:solarized_termcolors = 256
colorscheme solarized

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
