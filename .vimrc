"Leader
let mapleader="\<Space>"

syntax on
colorscheme onedark

" line number and theme setup
set encoding=UTF-8
set relativenumber
set number
set signcolumn=no
set termguicolors

" *** Search Option ***
set smartcase
set ignorecase
set wrapscan
set hlsearch
set incsearch
" set nohlsearch

" Tab and space indicators
set list
set listchars=tab:→\ ,trail:•,extends:#,nbsp:.

" Ctrl+i to stop searching
vnoremap <C-y> :nohlsearch<cr>
nnoremap <C-y> :nohlsearch<cr>

" save and quit gracefully
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" copy and paste from system clipboard
noremap <Leader>y "*y
nnoremap <leader>p "+gp
vnoremap <leader>y "+y

" Moving lines
nnoremap <c-j> :m .+1<CR>==
nnoremap <c-k> :m .-2<CR>==
inoremap <c-j> <Esc>:m .+1<CR>==gi
inoremap <c-k> <Esc>:m .-2<CR>==gi
vnoremap <c-j> :m '>+1<CR>gv=gv
vnoremap <c-k> :m '<-2<CR>gv=gv

" Mappings to access buffers 
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>c :bdelete<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>

" *** Buffer change ***"
imap <C-h> <Esc>:bprevious!<CR>
imap <C-l> <Esc>:bnext!<CR>

vmap <C-l> <Esc>:bnext!<CR>
vmap <C-h> <Esc>:bprevious!<CR>

nmap <C-l> <Esc>:bnext!<CR>
nmap <C-h> <Esc>:bprevious!<CR>

" #Better tab experience - from https://webdevetc.com/
"map <leader>tn :tabnew<CR>
"map <leader>t<leader> :tabnext<CR>
"map <leader>tm :tabmove<CR>
"map <leader>tc :tabclose<CR>
"map <leader>to :tabonly<CR>

" gv bindings
nnoremap <Leader>gs :Git<CR>:resize 20<CR>
nnoremap <Leader>gl :GV<CR>
nnoremap <Leader>gL :GV!<CR>
nnoremap <Leader>gb :Git blame<CR>
nnoremap <Leader>gd :Gdiffsplit<CR>
nnoremap <Leader>gp :copen<CR><C-w>p:AsyncRun git push<CR>
nnoremap <Leader>go :Git checkout -b 
nnoremap <Leader>gc :Git commit --amend -a
nnoremap <Leader>gr :GitGutterUndoHunk<CR>
nnoremap <Leader>gi :vnew<CR>:term glab ci status --compact --live<CR><C-W>K<CR>
nnoremap <Leader>gt :new<CR>:term glab ci trace<CR><C-W>J

" Moving between panes
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
nnoremap <leader>u <C-w>p
nnoremap <leader>v :vs<CR>

" *** Windows Resizing ***
nnoremap < :vertical resize +5<CR>
nnoremap > :vertical resize -5<CR>

" Escape like saro
inoremap jj <Esc>
cnoremap jj <C-C><Esc>

" *** Better History navigation ***
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-k> <Up>
cnoremap <C-j> <Down>
cnoremap <C-h> <Left>
cnoremap <C-l> <Right>

"No arrow keys --- force yourself to use the home row
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Move faster
map K 10k
map J 10j
map H ^
map L $

" Commenting
nnoremap <C-c> :Commentary<CR>
vnoremap <C-c> :Commentary<CR>

" Syntac highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1

" Formatting
nmap <Leader>C :ClangFormatAutoToggle<CR>
" autocmd FileType cpp ClangFormatAutoEnable
autocmd FileType cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>

" " It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" Show only line info
let g:airline_section_z = '%3l/%L'

" TagBar
nnoremap <leader>t :TagbarOpenAutoClose<CR>
autocmd FileType tagbar setlocal nocursorline nocursorcolumn
autocmd FileType tagbar nnoremap <buffer> <C-l> <nop>
autocmd FileType tagbar nnoremap <buffer> <C-h> <nop>
autocmd FileType tagbar nnoremap <buffer> <Space> <nop>
autocmd FileType tagbar nnoremap <buffer> <leader>h <C-w>h
autocmd FileType tagbar nnoremap <buffer> <leader>j <C-w>j
autocmd FileType tagbar nnoremap <buffer> <leader>k <C-w>k
autocmd FileType tagbar nnoremap <buffer> <leader>l <C-w>l


""" Nerdtree i START
nnoremap <C-t> :NERDTreeToggle<CR>

let NERDTreeMapOpenInTab='\r'
let NERDTreeShowHidden=1

" " Refresh the current folder if any changes
autocmd BufEnter NERD_tree_* | execute 'normal R'
au CursorHold * if exists("t:NerdTreeBufName") | call <SNR>15_refreshRoot() | endif
"
" "Reload the window if directory is changed
augroup DIRCHANGE
   au!
   autocmd DirChanged global :NERDTreeCWD
augroup END

"Close nerdtree automatically if it is theonly window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
""" Nerdtree - END

""" Fzf - START
" Search in Git files
nnoremap <C-p> :GFiles<CR>

"Search with Rg
nnoremap <C-g> :Rg<CR>

" Search all files
nnoremap <C-f> :Files<CR>

" Search word under cursor
nnoremap <C-s> :Rg <C-R><C-W><CR> 

""" Fzf - END

" COC - START

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

let g:lsp_document_highlight_enabled = 0
let g:lsp_diagnostics_enabled = 0         " disable diagnostics support
" COC - END



call plug#begin()

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Syntax highlighting
Plug 'octol/vim-cpp-enhanced-highlight'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Dev Icons
Plug 'ryanoasis/vim-devicons'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Multi line editing
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Cmake
Plug 'cdelledonne/vim-cmake'

" Clang formatter
Plug 'rhysd/vim-clang-format'

" Git
Plug 'airblade/vim-gitgutter'

" Buffer line
Plug 'bling/vim-bufferline'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Comment 
Plug 'tpope/vim-commentary'

" Paranthesis matching
Plug 'jiangmiao/auto-pairs'

" Vim Git tool
Plug 'tpope/vim-fugitive'

" See content of registers in sidebar
Plug 'junegunn/vim-peekaboo'

" Git integration
Plug 'junegunn/gv.vim'

" Tag manager
Plug 'ludovicchabant/vim-gutentags'

" Conflict solving helper
Plug 'rhysd/conflict-marker.vim'

" Tagbar
Plug 'preservim/tagbar'

Plug 'joshdick/onedark.vim'

call plug#end()
