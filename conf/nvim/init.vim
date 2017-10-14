source ~/.config/nvim/plugs.vim

" -------------------------------------------------- "
"  General Configuration                             "
" -------------------------------------------------- "
set nocompatible        " No VI allowed just VIM
set autoread            " File change detection
set history=1000        " Limit history to 1000
set textwidth=120
set clipboard=unnamed
filetype on
filetype plugin on

set backupdir=~/.config/nvim/.backup/
set directory=~/.config/nvim/.backup/


" -------------------------------------------------- "
" User Interface                                     "
" -------------------------------------------------- "
syntax on
set number
set relativenumber
if (has("termguicolors"))
 set termguicolors
endif
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme onedark
" set background=dark


" Non-text and tabs hightlight fix
highlight SpecialKey ctermbg=none ctermfg=8
highlight NonText ctermbg=none ctermfg=8

set nowrap              " Turn Line wrap off

set autoindent
set smartindent

" Show 'invisible' characters
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" Other configs
set cursorline
set tabstop=2         " Tab goes 2 spaces at the time
set softtabstop=2     " Edit as if tabs are 2 spaces wide
set expandtab         " Transform tabs into spaces
set shiftwidth=2      " Number of spaces to use for indent and unindent
set smarttab
set completeopt+=longest
set backspace=indent,eol,start
set wildmenu                " enhanced command line completion
set hidden                  " current buffer can be put into background
set showcmd                 " show incomplete commands
set noshowmode              " don't show which mode disabled for PowerLine
set wildmode=list:longest   " complete files like a shell
set scrolloff=3             " lines of text around cursor
set shell=$SHELL
set cmdheight=1             " command bar height
set laststatus=2            " show the satus line all the time
let g:enable_bold_font = 1 " Enable bold font

" Searching
set ignorecase              " case insensitive searching
set smartcase               " case-sensitive if expresson contains a capital
set hlsearch                " highlight search results
set incsearch               " set incremental search, like modern browsers

set showmatch               " show matching braces
set mat=2                   " how many tenths of a second to blink


" -------------------------------------------------- "
" Keyboard mappings                                  "
" -------------------------------------------------- "

" Most important key :)
let mapleader = ','

" Save shortcut
nmap <silent> <leader>, :w!<cr>

" Quit faster
map <silent> <leader>qq :q!<cr>

" Set paste toggle
set pastetoggle=<leader>v

" Edit ~/.config/nvim/init.vim
map <silent> <leader>ev :e! ~/.config/nvim/init.vim<cr>

" Edit ~/.gitconfig
map <silent> <leader>eg :e! ~/.gitconfig<cr>

" Edit .zshrc
map <silent> <leader>ez :e! ~/.zshrc<cr>

" Clear search highlight
noremap <silent> <space> :set hlsearch! hlsearch?<cr>

" Scroll faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Natural view of navigations
set splitbelow
set splitright

nmap <silent> <leader>T :enew<CR> " Open a new empty buffer
nmap <silent> <leader>l :bnext<CR> " Move to next buffer
nmap <silent> <leader>h :bprevious<CR> " Move to previous buffer
nmap <silent> <leader>bq :bp <BAR> bd #<CR> " Close the current buffer and move to previous one
nmap <silent> <leader>bl :ls<CR> " List all buffers
nmap <silent> <leader>1 :1b<CR> "Buffer 1"
nmap <silent> <leader>2 :2b<CR> "Buffer 2"
nmap <silent> <leader>3 :3b<CR> "Buffer 3"
nmap <silent> <leader>4 :4b<CR> "Buffer 4"
nmap <silent> <leader>5 :5b<CR> "Buffer 5"
nmap <silent> <leader>6 :6b<CR> "Buffer 6"
nmap <silent> <leader>7 :7b<CR> "Buffer 7"
nmap <silent> <leader>8 :8b<CR> "Buffer 8"
nmap <silent> <leader>9 :9b<CR> "Buffer 9"
nmap <silent> <leader>0 :0b<CR> "Buffer 0"

" -------------------------------------------------- "
" Plugin Configurations                              "
" -------------------------------------------------- "
" Nerd Tree
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <silent> <leader>n :NERDTreeToggle<CR>
map <silent> <leader>nb :NERDTreeFromBookmark
map <silent> <leader>nf :NERDTreeFind<cr>

" Deoplete
let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" IndentLine
" let g:indentLine_setColors = 0
map <silent> <leader>ti :IndentLinesToggle<CR>
let g:indentLine_enabled = 0

" vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1


" FZF
nmap <silent> <leader>e :FZF<cr>

" Fugitive
nmap <silent> <leader>gs :Gstatus<cr>
nmap <silent> <leader>ge :Gedit<cr>
nmap <silent> <leader>gc :Gcommit<cr>
nmap <silent> <leader>gp :Gpush<cr>

" Airline
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1 " enable airline tabline
let g:airline#extensions#tabline#tab_min_count = 1 " only show tabline if tabs are being used (more than 1 tab open)
let g:airline#extensions#tabline#show_buffers = 1 " do not show open buffers in tabline
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#fnamemod = ':t'

" Remote Plugins NeoVim
let g:loaded_python_provider = 0
let g:python_host_prog = '/Users/dalssaso/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/dalssaso/.pyenv/versions/neovim3/bin/python'

" Don't hide quotes in JSON files
let g:vim_json_syntax_conceal = 0

" Vim Commentary
autocmd FileType terraform setlocal commentstring=#\ %s
