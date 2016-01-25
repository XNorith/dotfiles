" .vimrc - Alan Christopher Thomas
" " http://alanct.com/
"
"
" " """"""""""""""""""""""""""""""""""""""""""""""""
" " =============== General Settings ===============


"
" " vIM
set nocompatible
"
" " Allow per-directory vimrc
set exrc
set secure
"
" " Automatically expand tabs into spaces
set expandtab
"
" " Tabs are four spaces
set shiftwidth=4
set softtabstop=4
set tabstop=4
"
" " Use expected backspace behavior
set backspace=indent,eol,start
"
" " Turn off search highlighting
" set nohls
"
" " Turn of swap files and backups
" set nobackup
" set noswapfile
" set nowritebackup
"
" " Turn of text wrapping
set nowrap
"
" " Display position coordinates in bottom right
set ruler
"
" " Abbreviate messages and disable intro screen
set shortmess=atI
"
" " Get rid of omnicomplete doc preview
" set completeopt=menu
"
" " Use filetype-specific plugins and indentation
set nosmartindent
"
" " Use relative line numbering
set relativenumber
" " Turn off automatic line breaking in html and css
" au BufRead,BufNewFile *.html,*.css set textwidth=0
"
" " Use two-space tabs for javascrit
" autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 tabstop=2
"
" " Ignore compiled python
set wildignore+=*.pyc
"
"
" " Use comma as leader
let mapleader = ','
"
" " """"""""""""""""""""""""""""""""""""""""""""""""
" " =============== Plugin Mangement ===============
"
" " Initialize Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
" call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" " Plugins
Plugin 'tmhedberg/SimpylFold'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'vim-scripts/indentpython.vim'
" 
Plugin 'gmarik/vundle'
Plugin 'kien/ctrlp.vim'
" Plugin 'nono/vim-handlebars'
" Plugin 'Glench/Vim-Jinja2-Syntax'
" Plugin 'klen/python-mode'
Plugin 'scrooloose/nerdtree'
map <leader>o :NERDTreeToggle<CR>
Plugin 'scrooloose/syntastic'
Plugin 'tomtom/tcomment_vim'
" Plugin 'tpope/vim-commentary'
Plugin 'altercation/vim-colors-solarized'
" Plugin 'vim-scripts/xoria256.vim'
" Plugin 'bling/vim-airline'
" Plugin 'alanctkc/vim-airline-powerbeans'
" Plugin 'sophacles/vim-bundle-mako'
" Plugin 'nanotech/jellybeans.vim'
" Plugin 'tpope/vim-fugitive'
" Plugin 'jnwhiteh/vim-golang'
" Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-surround'
" Plugin 'tpope/vim-unimpaired'
" Plugin 'tmhedberg/matchit'
" Plugin 'voithos/vim-python-matchit'
" Plugin 'justinmk/vim-sneak'
" Plugin 'mattn/emmet-vim'
" Plugin 'elzr/vim-json'
" Plugin 'pangloss/vim-javascript'
Plugin 'davidhalter/jedi-vim'
" if has('lua') && (v:version > 703 || v:version == 703 && has('patch885'))
Plugin 'Shougo/neocomplete.vim'
"     else
"         Plugin 'ervandew/supertab'
"         endif
"
"         " Turn filetype back on
"         filetype plugin indent on
"
"
"         " """"""""""""""""""""""""""""""""""""""""""""""""
" =============== Plugin Settings ================
"
" " Enable neocomplete
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:jedi#auto_vim_configuration = 0
syntax enable
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#completions_enabled = 0
if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
" inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
"
" " Ignore gitignored files in CtrlP
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc
" --exclude-standard']
"
"  " Always populate loclists with syntastic
"  let g:syntastic_always_populate_loc_list = 1
"
"  " Use syntastic for jscs and jshint
"  let g:syntastic_javascript_checkers = ['jshint', 'jscs']
"
"  " Use syntastic for flake8
let g:syntastic_check_on_open=1
let g:syntastic_python_checkers=['flake8']
"
"  " Ignore angular directive errors
"  let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
"  
"
"
"  " Prevent run code plugin loading
"  let g:pymode_run = 0
"
"  " Prevent pylint plugin loading
"  let g:pymode_lint = 0
let g:pymode_indent = 1
let g:pymode_folding = 1
let g:pymode_motion = 1
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'
let g:pymode_trim_whitespaces = 1
let g:pymode_rope = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_lookup_project = 0
set autoindent
set smartindent
"  " Disable python folding
"  let g:pymode_folding = 0
"
"  " Disable default pymode python options
"  let g:pymode_options = 0
"
"  " Show status line for single windows
set laststatus=2
"
"  " Disable airline separators
"  let g:airline_left_sep=''
"  let g:airline_right_sep=''
"
"  " Set airline theme
"  let g:airline_theme='powerbeans'
"
"  " Show json quotes
"  let g:vim_json_syntax_conceal = 0
"
"
"  " """"""""""""""""""""""""""""""""""""""""""""""""
" ============= Custom Key Bindings ==============
"
" " Remap new tab
nmap <Leader>t <Esc>:tabnew<CR>
nmap <Leader>p <Esc>:CtrlP<CR>
"
" " Remap movement between windows
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Unbind the cursor keys in insert, normal and visual modes.
for prefix in ['i', 'n', 'v']
  for key in ['<Up>', '<Down>', '<Left>', '<Right>']
      exe prefix . "noremap " . key . " <Nop>"
        endfor
        endfor

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" " Remap window rearrangement
" nmap <C-m>h <C-w>H
" nmap <C-m>j <C-w>J
" nmap <C-m>k <C-w>K
" nmap <C-m>l <C-w>L
"
" " Expand into multiple lines and focus the center line
imap <C-E> <Esc>a<Enter><Esc>O

" " Enable folding with the spacebar
nnoremap <space> za

" " Toggle paste keybinding
set pastetoggle=<Leader>p
"
" " Ctrl-P rebinding
" map <Leader>f :CtrlP<CR>
"
"
" " """"""""""""""""""""""""""""""""""""""""""""""""
" " ==================== Colors ====================
"
" " Use syntax highlighting and color scheme
syntax enable
" silent! colorscheme jellybeans
" set background=dark
" colorscheme xoria256
colorscheme solarized
" " Use 256 colors in color schemes
set t_Co=256
set term=xterm-256color
let g:solarized_termcolors=256
let g:solarized_termtrans = 1
