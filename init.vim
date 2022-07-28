"==============================================
" [PLUGINS] "
" [============================================
call plug#begin()
  
  " [PLUGIN MANAGER] "
  " [------------------------------------------
    Plug 'junegunn/vim-plug'
  " ------------------------------------------]
  
  " [BAR] "
  " [------------------------------------------
    Plug 'vim-airline/vim-airline'
  " ------------------------------------------]

  " [COMMENTER] "
  " [------------------------------------------
    Plug 'tpope/vim-commentary'
  " ------------------------------------------]

  " [SEARCHER] "
  " [------------------------------------------
    Plug 'ctrlpvim/ctrlp.vim'
  " ------------------------------------------]

  " [THEMES] "
  " [------------------------------------------
    Plug 'artanikin/vim-synthwave84'
    Plug 'dracula/vim'
    Plug 'morhetz/gruvbox'
  " ------------------------------------------]

  " [AUTOBRACKETS] "
  " [------------------------------------------
    Plug 'Raimondi/delimitMate'
  " ------------------------------------------]

  " [SCROLL] "
  " [------------------------------------------
    Plug 'psliwka/vim-smoothie'
  " ------------------------------------------]

  " [ICONS] "
  " [------------------------------------------
    Plug 'tribela/vim-transparent'
    Plug 'ryanoasis/vim-devicons'
  " ------------------------------------------]

  " [C-C++] "
  " [------------------------------------------
    Plug 'vhdirk/vim-cmake'
  " ------------------------------------------]
  
  " [CODE-SUPPORT] "
  " [------------------------------------------
    Plug 'khaveesh/vim-fish-syntax'
    Plug 'prabirshrestha/asyncomplete.vim'
    Plug 'prabirshrestha/asyncomplete-lsp.vim'
  " ------------------------------------------]
 
  " [SERVER] "
  " [------------------------------------------
    Plug 'prabirshrestha/async.vim'
    Plug 'prabirshrestha/vim-lsp'
    Plug 'ajh17/vimcompletesme'

    " Plug 'mattn/vim-lsp-settings'
  " ------------------------------------------]

call plug#end()
" ============================================]

" [VIM-SETTINGS] "
" [============================================
  " [TABS AND SPACES] "
  " [------------------------------------------
    set smarttab
    set expandtab
    set tabstop     =2
    set softtabstop =2
    set shiftwidth  =2
    set ai
    set si
  " ------------------------------------------]

  " [LINES] "
  " [------------------------------------------
    set rnu
    set nu
    set nowrap
    set foldcolumn =2
    set showcmd
    "set cursorline
    "set textwidth  =80
  " ------------------------------------------]

  " [AUTOSTART] "
  " [------------------------------------------
    "autocmd VimEnter * NERDTree | wincmd p
  " ------------------------------------------]

  " [SMALL BUNS] "
  " [------------------------------------------
    syntax on
    set nocompatible
    set wildmode=longest:list,full
    set termguicolors
    "set term=xterm-256color
    colorscheme gruvbox
  " ------------------------------------------]

  " [SEARCH] "
  " [------------------------------------------
    set incsearch
    set smartcase
    set hlsearch
    set incsearch
  " ------------------------------------------]

  " [ENCODING] "
  " [------------------------------------------
    set fileencoding =utf8
    set encoding     =utf8
    set termencoding =utf8
    set guifont      =Hack:h10
  " ------------------------------------------]

" ============================================]

" [BIND]
" [============================================
  " [SAVE] "
  " [------------------------------------------
    imap <F2> <Esc>:w<CR>
    map  <F2> <Esc>:w<CR>
    imap <F3> <Esc>:xall<CR>
    map  <F3> <Esc>:xall<CR>
  " ------------------------------------------]

  " [C++FILES] "
  " [------------------------------------------
    nnoremap <C-s> :call SwapFiles()<CR>
  " ------------------------------------------]

  " [SEARCH] "
  " [------------------------------------------
    noremap <F12> <Esc>:nohl<CR>
    noremap <F11> <Esc>:so %<CR>
  " ------------------------------------------]
    
  " " noremap <> <Esc>gcc<CR>
    " noremap <M-?> <Esc>gcap<CR>
  " [------------------------------------------

  " [BUFFERWORK] "
  " [------------------------------------------
    nnoremap <F5> :bf<CR>
    nnoremap <F6> :bp<CR>
  " ------------------------------------------]

  " [CHANGEPANES] "
  " [------------------------------------------
    noremap <C-l> <C-w>l
    noremap <C-h> <C-w>h
    noremap <C-j> <C-w>j
    noremap <C-k> <C-w>k
  " ------------------------------------------]

  " [VIM-MAKE] "
  " [------------------------------------------
    noremap <C-m><F6> :CMake
    noremap <C-m><F5> :make all
    noremap <C-m><F7> :CMakeClean<CR>
  " ------------------------------------------]

  " [ASYNCOMPLETE] "
  " [------------------------------------------
    inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
    inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
  " ------------------------------------------]

" ============================================]

" [Files]
" [============================================
  " [Make] "
  " [------------------------------------------
    autocmd filetype make set noexpandtab                                              
    autocmd filetype make set nocin
  " ------------------------------------------]

  " [HTML] "
  " [------------------------------------------
    autocmd filetype html set noexpandtab                                           
    autocmd filetype html set nocin                                                 
    autocmd filetype html set textwidth=160 
  " ------------------------------------------]

  " [CSS] "
  " [------------------------------------------
    autocmd filetype css set nocin                                                  
    autocmd filetype css set noexpandtab
  " ------------------------------------------]

  " [Python] "
  " [------------------------------------------
    autocmd filetype python set nocin
  " ------------------------------------------]

" ============================================]

" [FUNC]
" [============================================

  function! GetFileName()
      return expand('%:t:r')
  endfunction

  function! FindSimilarFilesR(filename)
  endfunction

  function! CheckFileExist(filename)
    return !empty(findfile(a:filename))
  endfunction

  function! SwapFiles()

  let fex = expand('%:e')
  let files_ex = { 'hpp' : 'cc', 'cc' : 'hpp', 'c' : 'h', 'h' : 'c'}
  let filename = GetFileName() . '.' . l:files_ex[l:fex]
  
  if CheckFileExist(l:filename)
    execute( 'edit ' . l:filename)
  else
    echo "Not found :("
  endif

  endfunction

" ============================================]


" [CONFIG PLUG]
" [============================================
  " [LSP] "
  " [------------------------------------------
  if executable('clangd')
    augroup lsp_clangd
        autocmd!
        autocmd User lsp_setup call lsp#register_server({
                    \ 'name': 'clangd',
                    \ 'cmd': {server_info->['clangd']},
                    \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
                    \ })
        autocmd FileType c setlocal omnifunc=lsp#complete
        autocmd FileType cpp setlocal omnifunc=lsp#complete
        autocmd FileType objc setlocal omnifunc=lsp#complete
        autocmd FileType objcpp setlocal omnifunc=lsp#complete
    augroup end
  endif
    " disable diagnostics support
    let g:lsp_diagnostics_enabled = 1   
    let g:lsp_document_highlight_enabled = 0
  " ------------------------------------------]
  "  
" ============================================]
"==============================================
