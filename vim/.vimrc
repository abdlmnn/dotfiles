" --------------------------
" BASIC SETTINGS
" --------------------------
set number
set relativenumber
set cursorline
set ignorecase
set smartcase
set incsearch
set tabstop=4
set shiftwidth=4
set expandtab
set termguicolors
syntax on
filetype plugin indent on
set hidden

" --------------------------
" PLUGINS (vim-plug)
" --------------------------
call plug#begin('~/.vim/plugged')

" Themes
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'folke/tokyonight.nvim'
Plug 'sainnhe/gruvbox-material'

" Utilities
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'

" Autocomplete / LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" --------------------------
" THEME
" --------------------------
set background=light           " light Solarized Osaka
colorscheme solarized

" Optional tweaks for Osaka feel
hi Normal ctermbg=NONE guibg=NONE
hi CursorLine cterm=NONE guibg=#fdf6e3
hi LineNr guifg=#586e75
hi Comment guifg=#93a1a1

" --------------------------
" KEY MAPPINGS
" --------------------------
" NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>
" FZF
nnoremap <C-p> :Files<CR>
" Save / quit
nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>
" Split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Git (vim-fugitive)
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gp :Gpush<CR>

" --------------------------
" LIGHTLINE CONFIG
" --------------------------
let g:lightline = {}
let g:lightline.colorscheme = 'solarized'
let g:lightline.active = {}
let g:lightline.active.left = [ ['mode', 'paste'], ['readonly', 'filename', 'modified'] ]
let g:lightline.component_function = {}
let g:lightline.component_function.filename = 'LightlineFilename'

function! LightlineFilename()
    if expand('%:t') != ''
        return expand('%:t')
    else
        return '[No Name]'
    endif
endfunction

" --------------------------
" ICONS NERDTREE
" --------------------------
let g:nerdtree_show_icons=1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" --------------------------
" FZF CONFIG
" --------------------------
let g:fzf_layout = { 'down': '40%' }

" --------------------------
" COC.VIM CONFIG
" --------------------------
" Use <Tab> and <Shift-Tab> to navigate the completion menu
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Go to definition / references / implementation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gi <Plug>(coc-implementation)

" Hover for info
nnoremap <silent> K :call CocActionAsync('doHover')<CR>
