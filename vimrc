set nocompatible
filetype off
" Vundle Plugins managment
set rtp+=/root/.vim/bundle/Vundle.vim
call vundle#begin()
" vim plugin manager
Plugin 'gmarik/Vundle.vim'
" a vim low-contrast color scheme
" Plugin 'jnurmine/Zenburn' 	
" a code-completion engine for vim
Plugin 'Valloric/YouCompleteMe'
" tree explorer plugin 
Plugin 'scrooloose/nerdtree'
" auto-pairs
Plugin 'jiangmiao/auto-pairs'
" Python code folding
Plugin 'tmhedberg/SimpylFold'
" speed up vim folds
" Plugin 'Konfekt/FastFold'
" Python  indentation
Plugin 'vim-scripts/indentpython.vim'
" display indenton level with vertical line
Plugin 'Yggdroot/indentline'
" automatically formats Python code(Plugin 'tell-k/vim-autopep8 for vimplugin'
Plugin 'hhatto/autopep8'
call vundle#end()
filetype plugin indent on 

" general settings for vim
" color scheme settings
set t_Co=256
colorscheme molokai
set background=dark
set autoindent
set nu
set shiftwidth=4
set showmatch
set tabstop=4
set autoread
set magic
set encoding=utf-8
set fileformat=unix
set cursorline

" general mapping settings
" change mapleader from \ to [space]
let mapleader=" "
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>Q :q!<CR>
nnoremap <leader>j 10j
nnoremap <leader>k 10k
nnoremap <leader>l 10l
nnoremap <leader>h 10h

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap U <C-r>

" comment
nmap <leader>/ I//<ESC>
imap jj <ESC>
imap kk <ESC>


" Zenburn settings for color scheme 

" avoid unneccessary whitespaces
au BufRead, BufNewFile *.py, *.pyw, *.c, *.h, *.cpp match BadWhitespace /\s\+$/

" Settings for SimpylFold
" Enable folding 
set foldmethod=indent
set foldlevel=99
"open/close fold
nnoremap <leader>z za	
"open all folds
nnoremap <leader>Z zR	
let g:SimpylFold_docstring_preview=1
" auto save folding information when exit
" au BufWinLeave * silent mkview
" auto load folding information when enter
" au BufWinEnter * silent loadview
" End settings for SimpylFold


" Settings for FastFold 
" let g:fastfold_savehook=1
" let g:fastfold_fold_command_suffixes=['a', 'R']
" nmap <F5> <Plug>(FastFoldUpdate)
" End settings for fastfold

" Settings for nerdtree
nmap tree :NERDTreeToggle<CR>
nmap <leader>t :NERDTreeToggle<CR>
" close vim if the only window left is tree
autocmd bufenter * if(winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" sort nodes case sensitively
let g:NERDTreeCaseSensitiveSort=1
" sort nodes i natural sort order
let g:NERDTreeNaturalSort=1
" specify which file nerdtree is to ignore
let g:NERDTreeIgnore=['\.d$[[dir]]','\.o$','\.out$','\.class$','\.tar\.gz$','\.rar$','\.zip$','\.py[cod]$','\.env$','\.swp$','.cache$']
" display hidden files(dynamically toggled with NERDTree-I mapping) 
" let g:NERDTreeShowHidden=1
let g:NERDTreeShowLineNumbers=1
" specify the order of nodes 
let g:NERDTreeSortOrder=['\/$','\.cpp$','\.c$','\.h$']
" End settings for nerdtree


" Settings for auto-pairs
" Fly mode input: if(a[3) output: if(a[3])
" let g:AutoPairsFlyMode=1
" End settings for auto-pairs


" Settings for YCM
" YCM global configuration
let g:ycm_server_python_interperter='/usr/bin/python3.5'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_min_num_identifier_candidate_chars=0
" when set to 0, turns off ycm's identifier completer and semantic triggers
let g:ycm_auto_trigger=1
" whitelist for which filetypes should ycm be turned on
let g:ycm_filetype_whitelist = {'vim':1,'python':1,'c':1,'cpp':1,'java':1}
let g:ycm_error_symbol='->'
let g:ycm_warning_symbol='..'
let g:ycm_enable_diagnostic_signs=1
let g:ycm_enable_diagnostic_highlighting=1
" when set to 1, ycm will show completion menu inside comments/strings
let g:ycm_complete_in_comments=0
let g:ycm_complete_in_strings=1
let g:ycm_collect_identifiers_from_comments_and_strings=0
" when set to 1, ycm will auto-close the perview window after the completion
let g:ycm_autoclose_preview_window_after_completion=0
let g:ycm_autoclose_preview_window_after_insertion=1
" key mappings used to select completion 
let g:ycm_key_list_select_completion=['<TAB>','<Down>','<C-j>']
let g:ycm_key_list_previous_completion=['<S-TAB','<Up>','<C-k>']
let g:ycm_key_invoke_completion='<C-Space>'
let g:ycm_key_list_stop_completion=['<C-l>']
" force recompile file and display new diagnostics
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>J :YcmCompleter GoTo<CR>
nnoremap <leader>jd :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>d :YcmDiags<CR>
" command mode mapping
cmap type YcmCompleter GetType
cmap doc YcmCompleter GetDoc
" End settings for YCM
