"==============================================
" [PLUGINS] "
" [============================================
    set nocompatible
    filetype off
    set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  
  " [PLUGIN MANAGER] "
  " [------------------------------------------
    Plugin 'VundleVim/Vundle.vim'
  " ------------------------------------------]
  
  " [BAR] "
  " [------------------------------------------
    Plugin 'vim-airline/vim-airline'
  " ------------------------------------------]

  " [EXPLORER] "
  " [------------------------------------------
    Plugin 'preservim/nerdtree'
  " ------------------------------------------]

  " [SCROLL] "
  " [------------------------------------------
    Plugin 'psliwka/vim-smoothie'
  " ------------------------------------------]

  " [LSP] "
  " [------------------------------------------
    Plugin 'prabirshrestha/vim-lsp'
    Plugin 'prabirshrestha/asyncomplete.vim'
    Plugin 'mattn/vim-lsp-settings'
    Plugin 'thomasfaingnaert/vim-lsp-snippets'
    Plugin 'thomasfaingnaert/vim-lsp-ultisnips'
  " ------------------------------------------]
  
  " [THEMES] "
  " [------------------------------------------
  " Plugin 'dracula/vim'
  " Plugin 'morhetz/gruvbox'
  " Plugin 'pineapplegiant/spaceduck'
    Plugin 'artanikin/vim-synthwave84'
  " ------------------------------------------]

  " [ICONS] "
  " [------------------------------------------
    Plugin 'tribela/vim-transparent'
    Plugin 'ryanoasis/vim-devicons'
  " ------------------------------------------]

  " [CODING HELP] "
  " [------------------------------------------
    Plugin 'SirVer/ultisnips'
    Plugin 'honza/vim-snippets'
  " ------------------------------------------]

  " [C-C++] "
  " [------------------------------------------
  " Plugin 'honza/vim-snippets'
    Plugin 'vhdirk/vim-cmake'
  " ------------------------------------------]

  "  [FISH] "
  " [------------------------------------------
    Plugin 'khaveesh/vim-fish-syntax'
  " ------------------------------------------]

 call vundle#end()
    filetype plugin indent on
" ============================================]

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
    set nocompatible
    set wildmode=longest:list,full
    set termguicolors
    set term=xterm-256color
    colorscheme  synthwave84
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
    
    " [NERDTREE] "
    "nnoremap <leader>n :NERDTreeFocus<CR>
    nnoremap <C-n><C-n> :NERDTree<CR>
    nnoremap <C-n><C-t> :NERDTreeToggle<CR>
    nnoremap <C-n><C-f> :NERDTreeFind<CR>

    " [VIM-CMAKE] "
    nnoremap <C-m><F5> :CMake<CR>
    nnoremap <C-m><F6> :make all<CR>
    nnoremap <C-m><C-n> :CMakeClean<CR>
    nnoremap <C-m><C-f> :CMakeFindBuildDir<CR>

   " " [AutoComplete] "
   " function! InsertTabWrapper(direction)
   "   let col = col('.') - 1
   "   if !col || getline('.')[col - 1] !~ '\k'
   "       return "\<tab>"
   "   elseif "backward" == a:direction
   "       return "\<c-p>"
   "   else
   "       return "\<c-n>"
   "   endif
   " endfunction
   "
   "" [TAB NEW] "
   "imap <F4> <Esc>:browse tabnew<CR>
   "map  <F4> <Esc>:browse tabnew<CR>
   "
   "" [TAB MOVE PREV] "
   "imap <F5> <Esc>:tabprev <CR>i
   "map  <F5> <Esc>:tabprev <CR>
   "
   "" [TAB MOVE NEXT] "
   "imap <F6> <Esc>:tabnext <CR>i
   "map  <F6> :tabnext <CR>


   " inoremap <tab> <c-r>=InsertTabWrapper ("forward")<cr>
   " inoremap <s-tab> <c-r>=InsertTabWrapper ("backward")<cr>
" ============================================]

" [Configs]
" [============================================
  
  " [UltiSnips]
  " [============================================
  "  let g:UltiSnipsExpandTrigger        ="<c-]>"
  "  let g:UltiSnipsListSnippets         ="<c-tab>"
  "  let g:UltiSnipsJumpForwardTrigger   ="<c-j>"
  "  let g:UltiSnipsJumpBackwardTrigger  ="<c-k>"
  " ============================================]

  " [YCM]
  " [============================================
    let g:ycm_min_num_of_chars_for_completion = 1
  " ============================================]

  " [Devicons] 
  " [============================================
    let g:webdevicons_enable_airline_statusline=1
    let g:webdevicons_enable_airline_statusline_fileformat_symbols=1
  " ============================================]

  " [NERDCommenter]
  " [============================================
    " Create default mappings
    let g:NERDCreateDefaultMappings = 0
    
    " Add spaces after comment delimiters by default
    let g:NERDSpaceDelims = 1
    
    " Use compact syntax for prettified multi-line comments
    let g:NERDCompactSexyComs = 1
    
    " Align line-wise comment delimiters flush left instead of following code indentation
    let g:NERDDefaultAlign = 'left'
    
    " Set a language to use its alternate delimiters by default
    let g:NERDAltDelims_java = 1
    
    " Add your own custom formats or override the defaults
    let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
    
    " Allow commenting and inverting empty lines (useful when commenting a region)
    let g:NERDCommentEmptyLines = 1
    
    " Enable trimming of trailing whitespace when uncommenting
    let g:NERDTrimTrailingWhitespace = 1
    
    " Enable NERDCommenterToggle to check all selected lines is commented or not 
    let g:NERDToggleCheckAllLines = 1
  " ============================================]
  
  " [VIM-LSP] 
  " [============================================
    if executable('pyls')
        " pip install python-language-server
        au User lsp_setup call lsp#register_server({
            \ 'name': 'pyls',
            \ 'cmd': {server_info->['pyls']},
            \ 'allowlist': ['python'],
            \ })
    endif
    
    function! s:on_lsp_buffer_enabled() abort
        setlocal omnifunc=lsp#complete
        setlocal signcolumn=yes
        if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
        nmap <buffer> gd <plug>(lsp-definition)
        nmap <buffer> gs <plug>(lsp-document-symbol-search)
        nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
        nmap <buffer> gr <plug>(lsp-references)
        nmap <buffer> gi <plug>(lsp-implementation)
        nmap <buffer> gt <plug>(lsp-type-definition)
        nmap <buffer> <leader>rn <plug>(lsp-rename)
        nmap <buffer> [g <plug>(lsp-previous-diagnostic)
        nmap <buffer> ]g <plug>(lsp-next-diagnostic)
        nmap <buffer> K <plug>(lsp-hover)
        nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
        nnoremap <buffer> <expr><c-d> lsp#scroll(-4)
    
        let g:lsp_format_sync_timeout = 1000
        autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
        
        " refer to doc to add more commands
    endfunction
    
    augroup lsp_install
        au!
        " call s:on_lsp_buffer_enabled only for languages that has the server registered.
        autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
    augroup END
  " ============================================]
  
  " [Asyncomplete]
  " [============================================
    inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
    inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
  " ============================================]

  " [LSP-complete]
  " [============================================
    let g:UltiSnipsExpandTrigger="<C-p>"
    let g:UltiSnipsJumpForwardTrigger="<tab>"
    let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
    
    if executable('clangd')
        augroup vim_lsp_cpp
            autocmd!
            autocmd User lsp_setup call lsp#register_server({
                        \ 'name': 'clangd',
                        \ 'cmd': {server_info->['clangd']},
                        \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
                        \ })
      autocmd FileType c,cpp,objc,objcpp,cc setlocal omnifunc=lsp#complete
        augroup end
    endif
    
    set completeopt+=menuone
  " ============================================]

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
