"==============================================
" [TABS AND SPACES] "
" [============================================
    set smarttab
    set expandtab
    set tabstop     =2
    set softtabstop =2
    set shiftwidth  =2
    set ai
    set si
" ============================================]

" [lINES] "
" [============================================
    set rnu
    set nu
    set nowrap
    set foldcolumn =2
    set showcmd
    "set cursorline
    "set textwidth  =80
" ============================================]

" [AUTOSTART] "
" [============================================
    "autocmd VimEnter * NERDTree | wincmd p
" ============================================]

" [SMALL BUNS] "
" [============================================
    syntax on
    set spell
    set nocompatible
    set wildmode=longest:list,full
    set termguicolors
    set term=xterm-256color
    set background=dark
    colorscheme habamax
" ============================================]

" [SEARCH]
" [============================================
    set incsearch
    set smartcase
    set hlsearch
    set incsearch
" ============================================]

" [ENCODING]
" [============================================
    set fileencoding =utf8
    set encoding     =utf8
    set termencoding =utf8
    set guifont      =Hack:h10
" ============================================]

" [BIND]
" [============================================
    " [SAVE] "
    imap <F2> <Esc>:w<CR>
    map  <F2> <Esc>:w<CR>
    imap <F3> <Esc>:xall<CR>
    map  <F3> <Esc>:xall<CR>

    " [SEARCH] "
    noremap <F12> <Esc>:nohl<CR>
    noremap <F11> <Esc>:so %<CR>

   "" [TAB NEW] "
   "imap <F4> <Esc>:browse tabnew<CR>
   "map  <F4> <Esc>:browse tabnew<CR>
   "
   "" [TAB MOVE PREV] "
   inoremap <F5> <Esc>:bp <CR>i
   noremap  <F5> <Esc>:bp <CR>
   
   " [TAB MOVE NEXT] "
   inoremap <F6> <Esc>:bn <CR>i
   noremap  <F6> :bn <CR>


   " inoremap <tab> <c-r>=InsertTabWrapper ("forward")<cr>
   " inoremap <s-tab> <c-r>=InsertTabWrapper ("backward")<cr>
" ============================================]
" [Files]
" [============================================
  " [Make] "
  autocmd filetype make set noexpandtab                                              
  autocmd filetype make set nocin

  " [HTML] "
  autocmd filetype html set noexpandtab                                           
  autocmd filetype html set nocin                                                 
  autocmd filetype html set textwidth=160 

  " [CSS] "
  autocmd filetype css set nocin                                                  
  autocmd filetype css set noexpandtab

  " [Python] "
  autocmd filetype python set nocin

" ============================================]
"==============================================
