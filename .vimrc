filetype off
set rtp+=~/.vim/bundle/Vundle.vim
let mapleader = ","

" Begin Vundle "
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Plugin 'AndrewRadev/switch.vim'

" Color Scheme
Plugin 'altercation/solarized', {'rtp': 'vim-colors-solarized'}
Plugin 'altercation/vim-colors-solarized'

" Misc
Plugin 'leshill/vim-json'
" Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'ntpeters/vim-better-whitespace' "Whitespace highlighting
Plugin 'othree/xml.vim'

" Tools
Plugin 'scrooloose/nerdtree' "Navigation sidebar
Plugin 'sickill/vim-pasta'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tomtom/tcomment_vim'
Plugin 'mileszs/ack.vim' "Search for text in all files in project
Plugin 'godlygeek/tabular'
Plugin 'Raimondi/delimitMate' "Automatic closing of quotes, brackets etc.
Plugin 'airblade/vim-gitgutter' "Show Git diffs
Plugin 'esneider/YUNOcommit.vim' "Telling you that you should commit
Plugin 'kien/ctrlp.vim' "Search files in project
Plugin 'nathanaelkane/vim-indent-guides' "Show indentation guides

" Html CSS
Plugin 'othree/html5.vim'

" Javascript
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'posva/vim-vue'

" Swift
Plugin 'keith/swift.vim'

" Rails
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'vim-ruby/vim-ruby'

" Elixir
Plugin 'elixir-editors/vim-elixir'

let g:YUNOcommit_after = 10
let g:ruby_indent_access_modifier_style = 'outdent'
Plugin 'vimwiki/vimwiki'
let g:rspec_command='Dispatch ./bin/rspec {spec}'

call vundle#end()            " required
filetype plugin indent on    " required
" End Vundle "

" Swift highlighting
" No idea why this works, but it does:
"https://www.reddit.com/r/vim/comments/800m9s/fast_vue_syntax_highlighting_plugin/
set runtimepath+=~/.vim/bundle/swift.vim

" Vue hightlighting vim-vue
let g:vue_disable_pre_processors = 1

" General settings
set shell=/bin/sh
syntax enable
set encoding=utf-8
set number                      " show line numbers
set showcmd                     " display incomplete commands
set showmatch                   " show matching braces
set mouse=a                     " use mouse in all modes
let NERDTreeShowHidden=1

" Attempt at Lage fix
set regexpengine=2 " use new engine

" Height of the command bar
set cmdheight=2
set lazyredraw "" performance config

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"filetype plugin indent on       " load file type plugins + indentation
let g:indent_guides_enable_on_vim_startup = 1
set ts=2
set sw=2
let g:indent_guides_start_level = 2

set background=dark
colorscheme solarized
let g:solarized_termcolors=256
set clipboard=unnamed          " Yanks go on clipboard instead.
" Splits
set splitbelow
set splitright
set lazyredraw

"" tmp and backup folders
set noswapfile

"" jsx
let g:jsx_ext_required = 0


"" Whitespace
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set softtabstop=2
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode
set ruler                       " show the cursor position all the time
set autoindent
set nofoldenable                " Say no to code folding...
set antialias
set shiftround
set ai
" set cursorline
set linespace=0
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_javascript_checkers=['eslint']

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
 et ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" git diff gitgutter
set updatetime=250

"" ctags
set tags=./tags;
map <Leader>rt :!/usr/local/bin/ctags --language-force=ruby --exclude=.git --exclude=.md --exclude=log -R * `bundle show --paths`

"" nerdtree
autocmd VimEnter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif " enable vi to close when NERDTree is the only open tab
let NERDTreeIgnore = ['\.DS_Store$']
" easier navigation between split windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
noremap <space><space> :w<CR>

"" Ack
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

"" ctrl p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set runtimepath+=~/.vim/bundle/ctrlp.vim

let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" command! Q q "Bind :q to :q!"
" command! Q q "Bind :Q to :q"
" command! Qall qall "Bind :Qall to :qall"
