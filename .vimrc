"==============================================
" [Plugins] "
" [============================================
    set nocompatible
    filetype off
    set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  
  " [Plugin manager] "
  " [------------------------------------------
    Plugin 'VundleVim/Vundle.vim'
  " ------------------------------------------]
  
  " [Bar] "
  " [------------------------------------------
    Plugin 'itchyny/lightline.vim'
    Plugin 'itchyny/vim-gitbranch'
  " ------------------------------------------]

  " [Explorer] "
  " [------------------------------------------
    Plugin 'preservim/nerdtree'
  " ------------------------------------------]

  " [Scroll] "
  " [------------------------------------------
    Plugin 'psliwka/vim-smoothie'
  " ------------------------------------------]
  
  " [Themes] "
  " [------------------------------------------
  " Plugin 'dracula/vim'
  " Plugin 'morhetz/gruvbox'
  " Plugin 'artanikin/vim-synthwave84'
    Plugin 'pineapplegiant/spaceduck'
    Plugin 'ayu-theme/ayu-vim'
  " ------------------------------------------]

  " [Coding help] "
  " [------------------------------------------
  " Plugin 'SirVer/ultisnips'
    Plugin 'tribela/vim-transparent'
  " ------------------------------------------]
  
 call vundle#end()
    filetype plugin indent on
" ============================================]

" [Tabs and spaces] "
" [============================================
    set smarttab
    set expandtab
    set tabstop     =2
    set softtabstop =2
    set shiftwidth  =2
    set ai
    set si
" ============================================]

" [Lines]
" [============================================
    set rnu
    set nu
    set nowrap
    set foldcolumn =2
    set showcmd
    "set cursorline
    "set textwidth  =80
" ============================================]

" [AutoStart]
" [============================================
    "autocmd VimEnter * NERDTree | wincmd p
" ============================================]

" [Small buns]
" [============================================
    syntax on
    set termguicolors
    set term=xterm-256color
    colorscheme spaceduck
" ============================================]

" [Search]
" [============================================
    set incsearch
    set smartcase
    set hlsearch
    set incsearch
" ============================================]

" [Encoding]
" [============================================
    set fileencoding =utf8
    set encoding     =utf8
    set termencoding =utf8
    set guifont      =Hack:h10
" ============================================]

" [Bind]
" [============================================
    " [Save] "
    imap <F2> <Esc>:w<CR>
    map  <F2> <Esc>:w<CR>

    " [Search] "
    noremap <F12> <Esc>:nohl<CR>
    
    " [Tab new] "
    imap <F4> <Esc>:browse tabnew<CR>
    map  <F4> <Esc>:browse tabnew<CR>
    
    " [Tab move prev] "
    imap <F5> <Esc>:tabprev <CR>i
    map  <F5> <Esc>:tabprev <CR>
    
    " [Tab move next] "
    imap <F6> <Esc>:tabnext <CR>i
    map  <F6> :tabnext <CR>

    " [NerdTree] "
    nnoremap <leader>n :NERDTreeFocus<CR>
    nnoremap <C-n><C-n> :NERDTree<CR>
    nnoremap <C-n><C-t> :NERDTreeToggle<CR>
    nnoremap <C-n><C-f> :NERDTreeFind<CR>

    " [AutoComplete] "
    function! InsertTabWrapper(direction)
      let col = col('.') - 1
      if !col || getline('.')[col - 1] !~ '\k'
          return "\<tab>"
      elseif "backward" == a:direction
          return "\<c-p>"
      else
          return "\<c-n>"
      endif
    endfunction

    inoremap <tab> <c-r>=InsertTabWrapper ("forward")<cr>
    inoremap <s-tab> <c-r>=InsertTabWrapper ("backward")<cr>
" ============================================]

" [Configs]
" [============================================
  " [Lightline] "
    set noshowmode
    set laststatus =2

    if !has('gui_running')
      set t_Co=256
    endif

    let g:lightline = {
          \ 'colorscheme': 'spaceduck',
          \ 
          \ 'active': {
          \   'left': [ [ 'mode', 'paste' ],
          \             [ 'gitbranch', 'filename', 'modified' ] ]
          \ },
          \ 'component_function': {
          \   'gitbranch': 'gitbranch#name',
          \   'filename': 'LightlineFilename',
          \ },
          \ }
    
    function! LightlineFilename()
      return &filetype ==# 'vimfiler' ? vimfiler#get_status_string() :
            \ &filetype ==# 'unite' ? unite#get_status_string() :
            \ &filetype ==# 'vimshell' ? vimshell#get_status_string() :
            \ expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
    endfunction
    
    let g:unite_force_overwrite_statusline = 0
    let g:vimfiler_force_overwrite_statusline = 0
    let g:vimshell_force_overwrite_statusline = 0

" ============================================]
"==============================================
