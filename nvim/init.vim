" Plugin directory
call plug#begin('~/.local/share/nvim/plugged')

Plug 'iCyMind/NeoSolarized'            " Theme
Plug 'scrooloose/nerdtree'             " File navigator
Plug 'Yggdroot/indentLine'             " Indentation level helper
Plug 'airblade/vim-gitgutter'          " Show changes in git files
Plug 'vim-airline/vim-airline'         " Airline statusbar
Plug 'vim-airline/vim-airline-themes'  " Airline themes

call plug#end()

" General Configurations
set number     	        " Numbered lines
set title      	        " Shows filename in terminal
set cursorline          " Highlight current line

" Airline configuration
let g:airline#extensions#tabline#enabled = 1      " Show opened buffers as tabs
let g:airline#extensions#tabline#fnamemod = ':t'  " Show filename only
set noshowmode                                    " Dont show current mode (airline does)

" Gitgutter configuration
set updatetime=250 "Update every 500 milliseconds

" IndentLine configuration (dont show in certain types of buffers and files)
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

" NerdTree configuration
let g:NERDTreeChDirMode = 2  " Change current directory to father node
map <F2> :NERDTreeToggle<CR> " Open/Close NerdTree with F2 key

" Theme configurations
set termguicolors
set background=dark    " Background theme
colorscheme NeoSolarized " Activate NeoSolarized theme
