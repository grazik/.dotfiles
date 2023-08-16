call plug#begin('~/.local/share/nvim/plugged')
    Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'morhetz/gruvbox'
    Plug 'maxmellon/vim-jsx-pretty'
    Plug '/usr/local/opt/fzf'
    Plug 'preservim/nerdtree'
    Plug 'junegunn/fzf.vim'
    Plug 'Valloric/YouCompleteMe'
    Plug 'eslint/eslint'
call plug#end()


set nocompatible               " be improved, required
filetype off                   " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim

filetype plugin indent on       " required

set t_Co=256
set number         " display line numbers on the left
set colorcolumn=120 " highlight column #80
set cursorline     " Highlight current line
set noshowmode     " don't display current mode (Insert, Visual, Replace) in
                   " the status line. This information is already shown in the
                   " Airline status bar
let g:airline_theme='simple'

let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

set showbreak=↪\    " string displayed at the start of wrapped lines
set listchars=tab:»\ ,eol:$,trail:_,space:_,extends:>,precedes:<,nbsp:+

set tabstop=4       " tab = N spaces
set softtabstop=4   " remove N spaces when removing indentation
set shiftwidth=4    " autoindent indents N spaces
set shiftround      " round to 'shiftwidth' for "<<" and ">>"
set expandtab       " always use spaces instead of tab characters
set nostartofline   " keep cursor in same column for long-range motion cmds
set scrolloff=3     " number of screen lines to show around the cursor
set sidescrolloff=2 " min # of columns to keep left/right of cursor
set rnu

au BufNewFile,BufRead *.tsx set filetype=javascript.javascriptreact

" -----------------------------------------------------------------------------
" Search
" -----------------------------------------------------------------------------
set ignorecase " ignore case when using a search pattern
set smartcase  " override 'ignorecase' if pattern has upper case characters

nnoremap <silent> <C-f> :Files<CR>

set grepprg=rg\ --vimgrep\ --smart-case\ --follow

nnoremap <silent> <leader>gd :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gr :YcmCompleter GoToReferences<CR>
nnoremap <silent> <leader>rr :YcmCompleter RefactorRename<space>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
