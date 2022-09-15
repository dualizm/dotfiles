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
  
  " [PROJECT-MANAGER] "
  " [------------------------------------------
    " a tree explorer plugin for vim. 
    Plug 'preservim/nerdtree'
  " ------------------------------------------]
  
  " [GIT] "
  " [------------------------------------------
    "  a git wrapper so awesome,
    "  it should be illegal 
    Plug 'tpope/vim-fugitive'
  " ------------------------------------------]

  " [SEARCHER] "
  " [------------------------------------------
    "fuzzy finder   
    Plug 'junegunn/fzf.vim'
  " ------------------------------------------]

  " [THEMES] "
  " [------------------------------------------
    " A minimal colorscheme that only puts 
    " emphasis on the paramount
    Plug 'owickstrom/vim-colors-paramount'

    " gruvbox with Material Palette 
    Plug 'sainnhe/gruvbox-material'

    " A nice light colorscheme
    Plug 'aonemd/quietlight.vim'

    " A collection of themes for vim-airline 
    Plug 'vim-airline/vim-airline-themes'
  " ------------------------------------------]

  " [SCROLL] "
  " [------------------------------------------
    " smooth scrolling done right
    "Plug 'psliwka/vim-smoothie'

    " smooth scrolling neovim 
    " plugin written in lua 
    Plug 'karb94/neoscroll.nvim'
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
    "Plug 'jpalardy/vim-slime'
    Plug 'kovisoft/slimv'
    Plug 'kovisoft/paredit'
  " ------------------------------------------]
  
  " [POLYGLOT]
  " [------------------------------------------
    " a solid language pack
    Plug 'sheerun/vim-polyglot'
  " ------------------------------------------]


  " [CODE-SUPPORT] "
  " [------------------------------------------
    " syntax and ftplugin files for fish shell scripts 
    "Plug 'khaveesh/vim-fish-syntax', { 'for' : ['fish'] }

    " rainbow brackets
    Plug 'frazrepo/vim-rainbow'

    " insert or delete brackets,
    " parens, quotes in pair
    "Plug 'jiangmiao/auto-pairs'

    " async completion
    Plug 'prabirshrestha/asyncomplete.vim'

    " check syntax asynchronously and fix files
    Plug 'dense-analysis/ale'

    " asynchronous linting and make framework
    Plug 'neomake/neomake'

    " flashes cursor after jump
    Plug 'DanilaMihailov/beacon.nvim'

    " make the yanked region apparent
    Plug 'machakann/vim-highlightedyank'

    " plugin to move lines and 
    " selections up and down 
    Plug 'matze/vim-move'

    " a simple alignment operator text editor 
    Plug 'tommcdo/vim-lion'

    " display the indention levels
    " with thin vertical lines 
    Plug 'Yggdroot/indentLine'

  " ------------------------------------------]
 
  " [AUTOCOMPLETE] "
  " [------------------------------------------
    " provide lsp autocompletion source 
    " for asyncomplete.vim and vim-lsp.
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
    autocmd VimEnter * echo 'Hello, ' . $USER . '!'
  " ------------------------------------------]

  " [SMALL BUNS] "
  " [------------------------------------------
    syntax on
    set nocompatible
    set wildmode=longest:list,full

    if has('termguicolors')
      set termguicolors
    endif

    " Enable GUI Tabline
    if exists(':GuiTabline')
        GuiTabline 1
    endif

    " highlighting brackets
    let g:rainbow_active = 1

    let theme_gruvbox    = 0
    let theme_paramount  = 1
    let theme_quietlight = 0

    if theme_gruvbox
      set background=dark
      let g:gruvbox_material_foreground                 ='mix'
      let g:gruvbox_material_background                 ='hard'
      let g:gruvbox_material_better_performance         =1
      let g:gruvbox_material_enable_bold                =1
      let g:gruvbox_material_ui_contrast                ='high'
      let g:gruvbox_material_diagnostic_text_hightlight =1

      colorscheme gruvbox-material
      let g:airline_theme ='gruvbox_material'
    elseif theme_paramount
      set background=dark
      colorscheme paramount
      let g:airline_theme ='base16_black_metal_marduk'
    elseif theme_quietlight
      set background=light
      colorscheme quietlight
      let g:airline_theme ='base16_fruit_soda'
    endif 
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
    set guifont      =FiraCode\ Nerd\ Font\ Mono:h12
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
  
  " [NERDTree] "
  " [------------------------------------------
    noremap <C-n>t <Esc>:NERDTree<CR>
    noremap <C-n>r <Esc>:NERDTreeCWD<CR>
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
    noremap <M-f>b <Esc>:Buffers<CR>
    noremap <M-f>f <Esc>:Files<CR>
    noremap <M-f>l <Esc>:Lines<CR>
    noremap <M-f>h <Esc>:History<CR>
  " ------------------------------------------]
    
  " " noremap <> <Esc>gcc<CR>
    " noremap <M-?> <Esc>gcap<CR>
  " [------------------------------------------
  
  " [BUFFERS]
  " [------------------------------------------
    noremap <F5> <Esc>:bf<CR>
    noremap <F6> <Esc>:bn<CR>
  " [------------------------------------------

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
    let g:lsp_diagnostics_enabled        = 1   
    let g:lsp_document_highlight_enabled = 0
  " ------------------------------------------]

  " [VIM-MODE] "
  " [------------------------------------------
    let g:move_key_modifier            = 'C'
    let g:move_key_modifier_visualmode = 'C'
  " ------------------------------------------]

  " [SLIME] "
  " [------------------------------------------
    let g:slime_target         = "tmux"
    let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":.1"}
  " ------------------------------------------]
  

  " [HIGHLIGHTED] "
  " [------------------------------------------
    highlight HighlightedyankRegion ctermbg=237 guibg=#520887
  " ------------------------------------------]

  " [INDENTLINE] "
  " [------------------------------------------
    " let g:indentLine_setColors = 234
    " let g:indentLine_color_term = 23
    " let g:indentLine_bgcolor_term = 0
    let g:indentLine_char = '.'
    " let g:indentLine_char_list = ['.', ' ', '.', ' ', '.', ' ', '.', ' ', '.', ' ', '.', ' ']
  " ------------------------------------------]
   

  " [SCROLL] "
  " [------------------------------------------
    lua require('neoscroll').setup()
  " ------------------------------------------]

  " [PYTHON]
  " [------------------------------------------
    let g:python3_host_prog = '/usr/bin/python3'
    let g:python_host_prog = '/usr/bin/python'
  " ------------------------------------------]


" ============================================]
"==============================================
