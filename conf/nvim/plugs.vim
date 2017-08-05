call plug#begin('~/.config/nvim/plugged')

  " Colorscheme
  Plug 'dracula/vim'
  Plug 'mhartington/oceanic-next'

  " General Utilities
  Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons'
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim' " Fuzzy Finder
  Plug 'jiangmiao/auto-pairs' " Auto closing for: parenthesis, brackets, quotes, etc...
  Plug 'tpope/vim-commentary' " Helper for commenting code
  " Plug 'tpope/vim-endwise' " Automatically adds 'end' in ruby code (chef too)
  Plug 'tpope/vim-surround' " Key mapping for delete, change, add such surroundings in pairs, like quotes, etc...
  Plug 'vim-airline/vim-airline' " fancy statusline
  Plug 'vim-airline/vim-airline-themes' " themes for vim-airline
  Plug 'tpope/vim-fugitive' " Git wrapper for vim
  " Plug 'garbas/vim-snipmate' " Snippet Manager
  Plug 'MarcWeber/vim-addon-mw-utils' " SnipMate Dependencie
  Plug 'tomtom/tlib_vim' " Snipmate Dependencie
  " Plug 'honza/vim-snippets' " SnipMate Dependencie
  Plug 'editorconfig/editorconfig-vim'
  " Plug 'ervandew/supertab' " Autocomplete
  Plug 'AndrewRadev/splitjoin.vim' " single/multi line code handler: gS - split one line into multiple, gJ - combine multiple lines into one
  Plug 'elzr/vim-json', { 'for': 'json' } " JSON support
  Plug 'Shougo/vimproc.vim', { 'do': 'make' } " Asynchrounous lib for plugins in VIM
  " Plug 'vim-syntastic/syntastic' " Syntax checking
  Plug 'airblade/vim-gitgutter' " GitGutter for Vim
  Plug 'honza/dockerfile.vim' " Dockerfile Syntax
  Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' } " Elixir Syntax
  Plug 'rodjek/vim-puppet', { 'for': 'puppet' } " Puppet Syntax
  " Plug 'tpope/vim-rails'
  Plug 'tpope/vim-markdown', { 'for': 'markdown' } " Markdown support
  Plug 'godlygeek/tabular'
  " Plug 'vim-scripts/groovy.vim'
  Plug 'tpope/vim-repeat'
  Plug 'fatih/vim-go', { 'for': 'go' }
  Plug 'kristijanhusak/vim-hybrid-material'
  Plug 'keith/rspec.vim'
  Plug 'Yggdroot/indentLine' " Show indentation
  " Deoplete Stuff :)
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Neo completion for NVIM
  Plug 'Shougo/deol.nvim'
  Plug 'Shougo/denite.nvim'
  Plug 'Shougo/neomru.vim'
  Plug 'Shougo/context_filetype.vim'
  Plug 'zchee/deoplete-jedi' " Awesome Python Framework for completion and snippets for Deoplet
  Plug 'neomake/neomake'
  Plug 'chase/vim-ansible-yaml' " Ansible Support
  Plug 'Glench/Vim-Jinja2-Syntax' " Jinja2 Support
  Plug 'rizzatti/dash.vim'
  Plug 'chr4/nginx.vim' " Nginx Support
  Plug 'hashivim/vim-terraform' " terraform support



call plug#end()

