"==============================================
" [PLUGINS] "
" [============================================
call plug#begin()
  
  " [PLUGIN MANAGER] "
  " [------------------------------------------
    " plugin manager
    Plug 'junegunn/vim-plug' 
  " ------------------------------------------]
  
  " [BAR] "
  " [------------------------------------------
    " status/tabline
    Plug 'vim-airline/vim-airline' 
  " ------------------------------------------]

  " [COMMENTER] "
  " [------------------------------------------
    " automatically inserts comment characters
    Plug 'tpope/vim-commentary'
  " ------------------------------------------]

  " [SEARCHER] "
  " [------------------------------------------
    "fuzzy finder   
    Plug 'junegunn/fzf.vim'
  " ------------------------------------------]

  " [THEMES] "
  " [------------------------------------------
    " the port of SynthWave '84 - VS Code  
    Plug 'artanikin/vim-synthwave84'

    " dark theme for Vim 
    Plug 'dracula/vim'

    " gruvbox with Material Palette 
    Plug 'sainnhe/gruvbox-material'
  " ------------------------------------------]

  " [SCROLL] "
  " [------------------------------------------
    " smooth scrolling done right
    Plug 'psliwka/vim-smoothie'
  " ------------------------------------------]

  " [ICONS] "
  " [------------------------------------------
    " remove all background color
    Plug 'tribela/vim-transparent'

    " adds file type icons
    Plug 'ryanoasis/vim-devicons'
  " ------------------------------------------]

  " [C-C++] "
  " [------------------------------------------
    " make working with CMake a little nicer
    Plug 'vhdirk/vim-cmake', { 'for' : ['cpp', 'c'] }
  " ------------------------------------------]
  
  " [LISP] "
  " [------------------------------------------
  " ------------------------------------------]
  
  " [CODE-SUPPORT] "
  " [------------------------------------------
    " syntax and ftplugin files for fish shell scripts 
    Plug 'khaveesh/vim-fish-syntax', { 'for' : ['fish'] }

    " rainbow brackets
    Plug 'frazrepo/vim-rainbow'

    " insert or delete brackets, parens, quotes in pair
    Plug 'jiangmiao/auto-pairs'

    " async completion
    Plug 'prabirshrestha/asyncomplete.vim'

    " check syntax asynchronously and fix files
    Plug 'dense-analysis/ale'

    " asynchronous linting and make framework
    Plug 'neomake/neomake'

    " flashes cursor after jump
    Plug 'DanilaMihailov/beacon.nvim'

    " a solid language pack
    Plug 'sheerun/vim-polyglot'

    " make the yanked region apparent
    Plug 'machakann/vim-highlightedyank'

    " plugin to move lines and selections up and down 
    Plug 'matze/vim-move'

    " a simple alignment operatortext editor 
    Plug 'tommcdo/vim-lion'
  " ------------------------------------------]
 
  " [AUTOCOMPLETE] "
  " [------------------------------------------
    " provide lsp autocompletion source for asyncomplete.vim and vim-lsp.
    Plug 'prabirshrestha/asyncomplete-lsp.vim'

    " normalize async job control api 
    Plug 'prabirshrestha/async.vim'

    " async language server protocol plugin
    Plug 'prabirshrestha/vim-lsp'

    " auto configurations for Language Server 
    Plug 'mattn/vim-lsp-settings'

    " tab completion plugin
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
    set textwidth  =80
  " ------------------------------------------]

  " [AUTOSTART] "
  " [------------------------------------------
    autocmd VimEnter * echo 'Hello, nim!'
  " ------------------------------------------]

  " [SMALL BUNS] "
  " [------------------------------------------
    syntax on
    set nocompatible
    set wildmode=longest:list,full

    if has('termguicolors')
      set termguicolors
    endif

    " highlighting brackets
    let g:rainbow_active = 1

    set background=dark
    let g:gruvbox_material_foreground = 'material'
    let g:gruvbox_material_background = 'hard'
    let g:gruvbox_material_better_performance = 1
    let g:gruvbox_material_enable_bold = 1
    let g:gruvbox_material_ui_contrast = 'high'
    let g:gruvbox_material_diagnostic_text_hightlight = 1

    colorscheme gruvbox-material
    let g:airline_theme = 'gruvbox_material'
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
    " Save file
    imap <F2> <Esc>:w<CR>
    map  <F2> <Esc>:w<CR>
    " End work
    imap <F10> <Esc>:xall<CR>
    map  <F10> <Esc>:xall<CR>
  " ------------------------------------------]

  " [SWAP FILES] "
  " [------------------------------------------
    "nnoremap <M-s> :call SwapFiles()<CR>
  " ------------------------------------------]
  
  " [UPDATE] "
  " [------------------------------------------
    noremap <F11> <Esc>:nohl<CR>
    noremap <F12> <Esc>:so %<CR>
  " ------------------------------------------]

  " [MARKS] "
  " [------------------------------------------
  " ...
    "m m 	toggle bookmark
    "m c 	clear bookmarks
    "m i 	add bookmark annote
    "m a 	show all bookmarks
    "m n 	jump to next bookmark
    "m p 	jump to previous bookmark"
  " ------------------------------------------]


  " [FZF] "
  " [------------------------------------------
    noremap <M-f><M-b> <Esc>:Buffers<CR>
    noremap <M-f><M-f> <Esc>:Files<CR>
    noremap <M-f><M-l> <Esc>:Lines<CR>
    noremap <M-f><M-h> <Esc>:History<CR>
  " ------------------------------------------]
    
  " " noremap <> <Esc>gcc<CR>
    " noremap <M-?> <Esc>gcap<CR>
  " [------------------------------------------
  
  " [BUFFERS]
    noremap <F5> <Esc>:bf<CR>
    noremap <F6> <Esc>:bn<CR>

  " [CHANGEPANES] "
  " [------------------------------------------
    noremap <C-l> <C-w>l
    noremap <C-h> <C-w>h
    noremap <C-j> <C-w>j
    noremap <C-k> <C-w>k
  " ------------------------------------------]

  " [VIM-MAKE] "
  " [------------------------------------------
    "noremap <M-b> :CMake
    noremap <M-m> :make
    "noremap <C-m-d> :CMakeClean<CR>
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
  
  " [VIM] "
  " [------------------------------------------
    autocmd filetype vim let g:AutoPairsFlyMode = 1
  " ------------------------------------------]
  
" ============================================]

" [FUNC]
" [============================================

  " [SWAP-FILES] "
  " [------------------------------------------
    function! GetFileName()
        return expand('%:t:r')
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
      echo "File to share not found :("
    endif

    endfunction
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

  " [VIM-MODE] "
  " [------------------------------------------
    let g:move_key_modifier = 'C'
    let g:move_key_modifier_visualmode = 'C'
  " ------------------------------------------]

" ============================================]
  "  " ============================================]
"==============================================
