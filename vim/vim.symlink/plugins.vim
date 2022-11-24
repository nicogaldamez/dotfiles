filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'AndrewRadev/switch.vim'
Plugin 'junegunn/vim-easy-align'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'flazz/vim-colorschemes'
" Plugin 'benmills/vimux'
Plugin 'skalnik/vim-vroom'
Plugin 'tpope/vim-dispatch'
Plugin 'rstacruz/sparkup'
Plugin 'leafgarland/typescript-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'christoomey/vim-conflicted'
Plugin 'mxw/vim-jsx'
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'mhinz/vim-grepper'
Plugin 'thoughtbot/vim-rspec'
Plugin 'isRuslan/vim-es6'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-test/vim-test'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
