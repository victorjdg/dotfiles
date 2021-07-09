call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-surround'   "Parenthesis helper
Plug 'iCyMind/NeoSolarized' "NeoSolarized theme
Plug 'scrooloose/nerdtree'  "File explorer
Plug 'xuyuanp/nerdtree-git-plugin'  "Git plugin for nerdtree
Plug 'vim-airline/vim-airline'  "Status bar
Plug 'vim-airline/vim-airline-themes'  "Themes for the status bar
Plug 'Yggdroot/indentLine'  "Shows indent lines

call plug#end()

" ****** CONFIG GENERAL ******
"Shows number of line
set number
"Shows filename
set title
"Mouse integration
set mouse=a
"Highlights current line
set cursorline
"Shows column limit @ 120 characters
set colorcolumn=120
"Ignore capital letters in searchs
set ignorecase
"Dont ignore capital letters in searched word contains one
set smartcase

"Theme config
set termguicolors  "Enables true colors on the terminal
set background=dark  "Theme background dark/light
colorscheme NeoSolarized  "Enables NeoSolarized theme

"File explorer config
let g:NERDTreeChDirMode = 2  "Change root to current directory
"Open/close with F2
map <F2> :NERDTreeToggle<CR>

"Airline config
let g:airline#extensions#tabline#enabled = 1  "Show open buffers (as tabs)
let g:airline#extensions#tabline#fnamemod = ':t'  "Show filename only
let g:airline_powerline_fonts = 1 "Load Powerline font and symbols
set noshowmode  "Dont show current mode (airline takes care of it)

"Indent Line
"Dont show in some extensions
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']
