source ~/.config/nvim/plugs.vim

" -------------------------------------------------- "
"  General Configuration                             "
" -------------------------------------------------- "
set nocompatible        " No VI allowed just VIM
set autoread            " File change detection
set history=1000        " Limit history to 1000
set textwidth=120

set backupdir=~/.config/nvim/.backup/
set directory=~/.config/nvim/.backup/


" -------------------------------------------------- "
" User Interface                                     "
" -------------------------------------------------- "
syntax on
set number
"set t_Co=256            " 256 Color Scheme
let base16colorspace=256
colorscheme base16-material-dark     " Good colorscheme from https://github.com/dracula/vim
set background=dark


" Non-text and tabs hightlight fix
highlight SpecialKey ctermbg=none ctermfg=8
highlight NonText ctermbg=none ctermfg=8

set wrap                " Turn Line wrap on
set wrapmargin=2        " Wrap lines when coming 4 characters from side

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
nmap <leader>, :w!<cr>

" Quit faster
map <leader>qq :q!<cr>

" Set paste toggle
set pastetoggle=<leader>v

" Edit ~/.config/nvim/init.vim
map <leader>ev :e! ~/.config/nvim/init.vim<cr>

" Edit ~/.gitconfig
map <leader>eg :e! ~/.gitconfig<cr>

" Edit .zshrc
map <leader>ez :e! ~/.zshrc<cr>

" Clear search highlight
noremap <space> :set hlsearch! hlsearch?<cr>

" Scroll faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Natural view of navigations 
set splitbelow
set splitright

" -------------------------------------------------- "
" Plugin Configurations                              "
" -------------------------------------------------- "
" Nerd Tree
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>n :NERDTreeToggle<CR>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>

" vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" Python
let g:syntastic_python_checkers=['pyflakes']

" Javascript
let g:syntastic_javascript_checkers = ['jshint']

" Go
let g:syntastic_auto_loc_list = 1
let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']

" FZF
nmap <silent> <leader>e :FZF<cr>

" Fugitive
nmap <silent> <leader>gs :Gstatus<cr>
nmap <leader>ge :Gedit<cr>

" Airline
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='hybrid'
let g:airline#extensions#tabline#enabled = 1 " enable airline tabline
let g:airline#extensions#tabline#tab_min_count = 2 " only show tabline if tabs are being used (more than 1 tab open)
let g:airline#extensions#tabline#show_buffers = 0 " do not show open buffers in tabline
let g:airline#extensions#tabline#show_splits = 0

" Don't hide quotes in JSON files
let g:vim_json_syntax_conceal = 0
