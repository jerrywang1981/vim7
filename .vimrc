filetype plugin indent on   " enable loading indent file for filetype
runtime macros/matchit.vim
syntax on                   " syntax highlighting
let g:solarized_termcolors=256
let mapleader=','
noremap \ ,
let maplocalleader=','

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-startify'
Plug 'jiangmiao/auto-pairs'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'thaerkh/vim-workspace'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdcommenter'
Plug 'kshenoy/vim-signature'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-repeat'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-syntastic/syntastic'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'tpope/vim-git'
Plug 'sjl/gundo.vim'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'mattn/emmet-vim'
Plug 'honza/vim-snippets'
Plug 'wellle/targets.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'machakann/vim-highlightedyank'
Plug 'vim-scripts/YankRing.vim'
Plug 'wincent/terminus'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'luochen1990/rainbow'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'Valloric/ListToggle'
Plug 'majutsushi/tagbar'
Plug 'tmux-plugins/vim-tmux'
Plug 'edkolev/tmuxline.vim'
Plug 'tpope/vim-dispatch'
call plug#end()



set nocompatible
set path+=**
set updatetime=5000
set directory=~/tmp,/tmp
set foldmethod=indent
set foldlevel=99
set autoindent
set encoding=utf-8
set clipboard+=unnamed  " use the clipboards of vim and win
" set paste               " Paste from a windows or from vim
set go+=a               " Visual selection automatically copied to the clipboard
set number
set relativenumber
set showtabline=2
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
set guioptions-=b
set nowrap
set fileformat=unix
set cindent
set colorcolumn=80
set tabstop=2
set shiftwidth=2
set softtabstop=2
set showmatch
set scrolloff=5
set laststatus=2
set fenc=utf-8
set backspace=2
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set matchtime=5
set ignorecase
set incsearch
set hlsearch
set expandtab
set whichwrap+=<,>,h,l
set autoread
set cursorline
set cursorcolumn
set history=200

set t_Co=256

set background=dark
colorscheme dracula

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/venv/*,*/node_modules/*

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

let g:rooter_silent_chdir = 1

" ctrl p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_by_filename = 1
let g:ctrlp_regexp = 1
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:10,results:10'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_use_caching = 1


"--------------------mapping-------
nmap <Leader>ev :e $MYVIMRC<cr>
nmap <Leader>sv :so $MYVIMRC<cr>

map <up> <Nop>
map <down> <Nop>
map <left> <Nop>
map <right> <Nop>
imap <up> <Nop>
imap <down> <Nop>
imap <left> <Nop>
imap <right> <Nop>
inoremap <c-h> <Left>
inoremap <c-j> <Down>
inoremap <c-k> <Up>
inoremap <c-l> <Right>
vmap <up> <Nop>
vmap <down> <Nop>
vmap <left> <Nop>
vmap <right> <Nop>

" use the [<space>  ]<space> from unimpaired plugin
" nmap go o<esc>k
" nmap gO O<esc>j

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

let g:yankring_replace_n_pkey = '<Char-8804>'
let g:yankring_replace_n_nkey = '<Char-8805>'

" option key + 1
nmap <silent> ¡ :Vex<CR>
nmap <silent> <leader><leader>1 :Vex<CR>

" option key + 2
nmap <silent> ™ :TagbarToggle<CR>
nmap <silent> <leader><leader>2 :TagbarToggle<CR>

nnoremap <silent> º :Goyo<cr>
nnoremap <silent> <leader><leader>0 :Goyo<cr>

nnoremap <silent> <c-s>l :TREPLSendLine<CR>
vnoremap <silent> <c-s>s :TREPLSendSelection<CR>


" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" Ex command mapping
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>


noremap <Leader>n nzz
noremap <Leader>N Nzz

" incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)



function! s:config_fuzzyall(...) abort
  return extend(copy({
  \   'converters': [
  \     incsearch#config#fuzzy#converter(),
  \     incsearch#config#fuzzyspell#converter()
  \   ],
  \ }), get(a:, 1, {}))
endfunction

noremap <silent><expr> z/ incsearch#go(<SID>config_fuzzyall())
noremap <silent><expr> z? incsearch#go(<SID>config_fuzzyall({'command': '?'}))
noremap <silent><expr> zg? incsearch#go(<SID>config_fuzzyall({'is_stay': 1}))


"--------undo toggle---------
noremap <silent> <leader>tr :GundoToggle<CR>





"--------------------terminal-------
set ttymouse=xterm2

let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" ------------startify configuration----------------
let g:startify_change_to_vcs_root = 1
let g:startify_change_to_dir = 0
let g:startify_custom_header = ['']
let g:startify_enable_special = 0


let g:rainbow_active = 1

" --------------------netrw----------------"
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

"----------------------coc----------------------------"
" source ~/.vim/config/coc.vim

" auto pair
let g:AutoPairsMapCh = 0
let g:AutoPairsMapCR = 1




" vim-workspace
let g:workspace_autosave = 0
let g:workspace_persist_undo_history = 0
let g:workspace_autosave_untrailspaces = 0
let g:workspace_session_directory = $HOME . '/.vim/sessions/'



let g:highlightedyank_highlight_duration = 500



" goyo and limelight

let g:goyo_width=100
let g:goyo_linenr=1
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" ---------tagbar-----------
let g:tagbar_autofocus = 1

" ----------undo tree------------
let g:gundo_prefer_python3 = 0
let g:gundo_help = 0

" -------lightline-----------

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['fugitive', 'gitgutter'],['filename', 'cocstatus', 'currentfunction']],
      \   'right':[ ['lineinfo'],
      \             ['percent'], ['fileformat','fileencoding', 'filetype'], []],
      \ },
      \ 'inactive': {
      \   'left': [['mode', 'paste'], ['filename'], ['tnt']],
      \   'right':[['lineinfo'], ['percent']],
      \ },
      \ 'tabline': {
      \   'left': [['buffers']],
      \   'right': [['close']],
      \ },
      \ 'component': {
      \   'lineinfo': '%3l:%-2v',
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers',
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightLineFugitive',
      \   'gitgutter': 'LightLineGitGutter',
      \   'readonly': 'LightLineReadonly',
      \   'tnt': 'LightLineTnt',
      \   'modified': 'LightLineModified',
      \   'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction',
      \   'filename': 'LightLineFname',
      \   'filetype': 'LightLineFiletype',
      \   'fileformat': 'LightLineFileformat',
      \ },
      \ 'component_type': {'buffers': 'tabsel'},
      \ }


function! s:get_buffer_number()
  let i = 0
  for nr in filter(range(1, bufnr('$')), 'bufexists(v:val) && buflisted(v:val)')
    let i += 1
    if nr == bufnr('')
      return i
    endif
  endfor
  return ''
endfunction

function! LightLineModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "+"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction

function! LightLineReadonly()
  return &readonly && &filetype !~# '\v(help|vimfiler|unite)' ? 'RO' : ''
endfunction

function! LightLineFugitive()
  if exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? _ : ''
  endif
  return ''
endfunction

function! LightLineCocError()
  let error_sign = get(g:, 'coc_status_error_sign', has('mac') ? '❌ ' : 'E')
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info)
    return ''
  endif
  let errmsgs = []
  if get(info, 'error', 0)
    call add(errmsgs, error_sign . info['error'])
  endif
  return trim(join(errmsgs, ' ') . ' ' . get(g:, 'coc_status', ''))
endfunction

function! LightLineCocWarn() abort
  let warning_sign = get(g:, 'coc_status_warning_sign')
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info)
    return ''
  endif
  let warnmsgs = []
  if get(info, 'warning', 0)
    call add(warnmsgs, warning_sign . info['warning'])
  endif
 return trim(join(warnmsgs, ' ') . ' ' . get(g:, 'coc_status', ''))
endfunction

autocmd User CocDiagnosticChange call lightline#update()

function! LightLineGitGutter()
  if ! exists('*GitGutterGetHunkSummary')
        \ || ! get(g:, 'gitgutter_enabled', 0)
        \ || winwidth('.') <= 90
    return ''
  endif
  let symbols = ['+','~','-']
  let hunks = GitGutterGetHunkSummary()
  let ret = []
  for i in [0, 1, 2]
    if hunks[i] > 0
      call add(ret, symbols[i] . hunks[i])
    endif
  endfor
  return join(ret, ' ')
endfunction

function! LightLineFname()
  let icon = (strlen(&filetype) ? ' ' : 'no ft')
  let filename = LightLineFilename()
  let ret = [filename,icon]
  if filename == ''
    return ''
  endif
  return join([filename, icon],'')
endfunction

function! LightLineFilename()
  return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
        \ ('' != expand('%:t') ? expand('%:t') : '') .
        \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction

function! LightLineFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ': 'no ft') : ''
endfunction

function! LightLineFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ') : ''
endfunction

let g:lightline#bufferline#show_number  = 3
" let g:lightline#bufferline#min_buffer_count = 1
let g:lightline#bufferline#shorten_path = 1
let g:lightline#bufferline#enable_devicons = 0
let g:lightline#bufferline#filename_modifier = ':t'
let g:lightline#bufferline#unnamed      = '[No Name]'
let g:lightline#bufferline#number_map = {
  \ 0: '₀', 1: '₁', 2: '₂', 3: '₃', 4: '₄',
  \ 5: '₅', 6: '₆', 7: '₇', 8: '₈', 9: '₉'}


nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)
