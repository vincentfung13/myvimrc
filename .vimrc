let g:go_version_warning = 0
set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry


"""""""""" Vundle Configurations
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'ycm-core/YouCompleteMe'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'benmills/vimux'
Plugin 'tmhedberg/SimpylFold'

let g:SimpylFold_docstring_preview = 1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
" "
"
" " Other configuration
" Colour scheme
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

" Set split position
set splitbelow

" NerdTree window size
let NERDTreeWinPos='left'
let NERDTreeWinSize=31
let NERDTreeChDirMode=1
nnoremap <silent> <F9> :NERDTree <CR>

" Ycm go to definition/declaration shortcut
nnoremap <C-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <C-k> :YcmCompleter GoToDeclaration<CR>
let g:ycm_confirm_extra_conf = 0

" Jump multiple rows and columns
nnoremap <Up> 5k
nnoremap <Down> 5j
nnoremap <Left> 5h
nnoremap <Right> 5l

" hit enter to cancel searched highlight
noremap <CR> :nohlsearch<CR>
noremap <C-N> :Ack <cword><CR>

" Fancy search
set incsearch
set hlsearch
set ignorecase
nnoremap <silent> <C-f> :FufCoverageFile<CR>
noremap <silent> <F2> :FufBufferTag<CR>

" Highlight cursor line
set cursorline
hi CursorLine cterm = underline
set cursorcolumn
hi CursorColumn cterm=NONE ctermbg=darkgrey 

" Disabling pymode-rope
let g:pymode_rope=0
" :set foldmethod=indent
" :set foldlevelstart=0

" Show brackets match
set showmatch

" Pylint configuration file
let g:pymode_options_max_line_length=100
autocmd FileType python set colorcolumn=100
