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

  " [EXPLORER] "
  " [------------------------------------------
    Plug 'preservim/nerdtree'
  " ------------------------------------------]

  " [COMMENTER] "
  " [------------------------------------------
  " ------------------------------------------]

  " [SEARCHER] "
  " [------------------------------------------
    Plug 'ctrlpvim/ctrlp.vim'
  " ------------------------------------------]

  " [THEMES] "
  " [------------------------------------------
    Plug 'artanikin/vim-synthwave84'
  " ------------------------------------------]

  " [SCROLL] "
  " [------------------------------------------
    Plug 'psliwka/vim-smoothie'
    Plug 'dracula/vim'
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
    Plug 'Shougo/neosnippet.vim'
    Plug 'Shougo/deoplete.nvim'
    Plug 'Shougo/neosnippet-snippets'
    Plug 'prabirshrestha/async.vim'
    Plug 'thomasfaingnaert/vim-lsp-snippets'
    Plug 'thomasfaingnaert/vim-lsp-neosnippet'
  " ------------------------------------------]
 
  " [SERVER] "
  " [------------------------------------------
    Plug 'prabirshrestha/vim-lsp'
    Plug 'mattn/vim-lsp-settings'
    Plug 'prabirshrestha/asyncomplete.vim'
    Plug 'prabirshrestha/asyncomplete-lsp.vim'
    Plug 'Shougo/ddc.vim'
    Plug 'shun/ddc-vim-lsp'
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
    colorscheme dracula
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

  " [SEARCH] "
  " [------------------------------------------
    noremap <F12> <Esc>:nohl<CR>
    noremap <F11> <Esc>:so %<CR>
  " ------------------------------------------]
    
  " [NERDTREE] "
  " [------------------------------------------
    "nnoremap <leader>n :NERDTreeFocus<CR>
    nnoremap <C-n><C-n> :NERDTree<CR>
    nnoremap <C-n><C-t> :NERDTreeToggle<CR>
    nnoremap <C-n><C-f> :NERDTreeFind<CR>
  " ------------------------------------------]

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

  " [VIM-CMAKE] "
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

" [CONFIG PLUG]
" [============================================
  " [LSP] "
  " [------------------------------------------
    " disable diagnostics support
    let g:lsp_diagnostics_enabled = 1   
    let g:lsp_document_highlight_enabled = 0
  " ------------------------------------------]
  "  
" ============================================]
"==============================================
