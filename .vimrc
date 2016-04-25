"""""""""""""""""""""""""""""""""    
"   __     __ _                    "
"   \ \   / /(_)_ __ ___           "
"    \ \ / / | | '_ ` _ \          "      
"     \ V /  | | | | | | |         "
"      \_/   |_|_| |_| |_|         "
"                                  "
""""""""""""""""""""""""""""""""""""    
 
"""""""""""""""""""""""""""""""Settings"""""""""""""""""""""""""""""""""""""""""""""

set shell=/bin/zsh "Sets the shell  
set nocompatible "Use the vim settings, not vi
filetype plugin on "Enables the recognition files 
filetype indent on
set magic "Enable regular expressions

"Formating
"set autoindent          " automatically indent lines
"set copyindent          " copy indent from previous line
set expandtab           " use spaces to indent
set shiftwidth=4        " number of spaces for indent
set smarttab            " backspace over tabs
set softtabstop=4       " tab = softtabstop * spaces
set tabstop=4           " tab stop distance
set noai

"Visual
set background=dark
colorscheme gruvbox
set encoding=utf-8
set laststatus=2
set ruler   "Ruler breaks
set ttyfast "Sending more characters to the terminal
set wrap    "It allows navigation within a long line with j and k
set showcmd " Show me what I'm typing
set hlsearch " Highlight found searches
set lazyredraw
set splitbelow " Split horizontal windows below to the current windows
set splitright " Split vertical windows right to the current windows
set fileformat=unix " Prefer Unix format
set t_Co=256 " Enable 256 colors
syntax on   "  Syntax highlighting
set nolinebreak
set number  "Show line numbers
set relativenumber
set cursorline
set showmode  " Show current mode.
set whichwrap=b,s,<,>,[,]
set title " Show title 
set showtabline=2
set fillchars+=stl:\ ,stlnc:\
set cmdheight=2 "Height command bar
hi TabLineFill ctermfg=White ctermbg=Yellow
hi TabLine ctermfg=Blue ctermbg=Yellow

"File handling
set autoread " Automatically reread changed files without asking me anything
set encoding=utf-8 " Set default encoding to UTF-8
set history=50 
set modeline
set noswapfile " Don't use swapfile

"Handling
set backspace=indent,eol,start "Makes backspace key more powerful.
set clipboard=unnamedplus "Clipboard system
set foldignore=" "
set foldlevelstart=10
set foldnestmax=10
set foldmethod=marker
set ignorecase " Search case insensitive...
set smartcase
set incsearch " Shows the match while typing
set nobackup " Don't create annoying backup files
set nowritebackup
set startofline "It allows you to change the column when moving through the line
set sm "Every time you close a parenthesis, bracket or brace, Vi shows where it was opened. If there is no  pair.

"Spell pt_BR 
"set spell spelllang=pt 

"hi SpellCap ctermfg=Gray ctermbg=Blue
"hi SpellBad ctermfg=Gray ctermbg=DarkRed 

let mapleader = ","  
let g:mapleader = "," 

"Shortcuts
nmap <C-t> :tabnew<CR> 
nmap <C-PageUp> :tabnext<CR>   
nmap <C-PageDown> :tabprevious<CR> 
nmap <C-x> :tabclose<CR> 
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>  
nmap <silent> <C-C> :silent noh<CR> 
inoremap <C-s> <esc>:w<cr>                 " save files
nnoremap <C-s> :w<cr>
inoremap <C-d> <esc>:wq!<cr>               " save and exit
nnoremap <C-d> :wq!<cr>
inoremap <C-q> <esc>:qa!<cr>               " quit discarding changes
nnoremap <C-q> :qa!<cr>

"Completion
 set wildmode=list:longest
 set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
 set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
 set wildignore+=*vim/backups*
 set wildignore+=*sass-cache*
 set wildignore+=*DS_Store*
 set wildignore+=vendor/rails/**
 set wildignore+=vendor/cache/**
 set wildignore+=*.gem
 set wildignore+=log/**
 set wildignore+=tmp/**
 set wildignore+=*.png,*.jpg,*.gif
 
"Scrolling 
"Start scrolling when we're 8 lines away from  margins
 set scrolloff=8         
 set sidescrolloff=15
 set sidescroll=1

" Plugins

"Patogen
execute pathogen#infect()

" NerdTree {
          if isdirectory(expand("~/.vim/bundle/nerdtree"))
              map <C-e> :NERDTreeToggle<CR>
              map <leader>e :NERDTreeFind<CR>
              nmap <leader>nt :NERDTreeFind<CR>


              let NERDTreeShowBookmarks=1
              let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
              let NERDTreeChDirMode=0
              let NERDTreeQuitOnOpen=1
              let NERDTreeMouseMode=2
              let NERDTreeShowHidden=1
              let NERDTreeKeepTreeInNewTab=1
              let g:nerdtree_tabs_open_on_gui_startup=0
          endif
      " }
                                    
"YouCompleteMe
 
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion=1
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>     
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
          
"Python-mode
" Override go-to.definition key shortcut to Ctrl-]
let g:pymode_rope_goto_definition_bind = "<C-]>"
" Override run current python file key shortcut to Ctrl-Shift-e
let g:pymode_run_bind = "<C-S-e>"
" Override view python doc key shortcut to Ctrl-Shift-d
let g:pymode_doc_bind = "<C-S-d>"

"Vim-airline
let g:airline_theme = 'wombat'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
"Vim-airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
 endif

" Gist

" let g:gist_show_privates = 0
" let g:gist_detect_filetype = 1
" let g:gist_open_browser_after_post =
