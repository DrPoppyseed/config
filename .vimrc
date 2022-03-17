".on_cursor_move" Plugins
call plug#begin()
" essential utility plugins
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary' " Commenting like in IDEs
Plug 'tpope/vim-sleuth' " Smart tab-space conversion
Plug 'tpope/vim-unimpaired' " Buffer selection shortcuts
Plug 'tpope/vim-vinegar' " Better netrw UI
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'cohama/lexima.vim' " Auto close parentheses 
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'BurntSushi/ripgrep'
Plug 'sharkdp/bat'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'christoomey/vim-tmux-navigator' " seamless navigation between tmux & vim
Plug 'jlanzarotta/bufexplorer' " buffer explorer

" decorative plugins
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" colorschemes
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'haishanh/night-owl.vim'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'drewtempelmeyer/palenight.vim'

" supportive plugins for fern
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/fern.vim'

" @language js,jsx,ts,tsx
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'othree/yajs.vim', {'for': ['javascript', 'javascript.jsx']}
Plug 'othree/es.next.syntax.vim', {'for': ['javascript', 'javascript.jsx']}
Plug 'othree/javascript-libraries-syntax.vim', {'for': ['javascript', 'javascript.jsx']}

" @language html
Plug 'othree/html5.vim'

" @language markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

" @language lua
Plug 'tjdevries/nlua.nvim'
Plug 'nvim-lua/completion-nvim'
Plug 'euclidianAce/BetterLua.vim'
Plug 'tjdevries/manillua.nvim'

" @experimental 
Plug 'SirVer/ultisnips' " try out snippets
Plug 'honza/vim-snippets' " snippets engine
Plug 'nvim-treesitter/playground'
Plug 'akinsho/toggleterm.nvim' " toggle terminal

call plug#end()

"" Encoding
set encoding=UTF-8

"" Constants
let MYVIMRC='~/.vimrc'

"" Leader
let g:mapleader=","

"" Keymappings
inoremap jk <Esc>

"" Line numbers
set number relativenumber

"" Share clipboard
set clipboard+=unnamedplus

"" Indent
set autoindent
set backspace=indent,eol,start
set breakindent
set expandtab
set nostartofline
set shiftwidth=2
set smartindent
set tabstop=2
set list
set listchars+=space:·

"" Search & Complete
set ignorecase
set regexpengine=2
set smartcase

"" Command
set wildignorecase
set wildmenu
set wrapscan
set wildmode=list:longest,full
set nowrap " Because you'd be a psychopath to wrap 

"" Completion
set completeopt=menu,menuone,noselect

"" Folding
set foldcolumn=1
set nofoldenable
set foldmethod=manual

"" Performance Options
set hidden

"" Display
set cmdheight=2

"" Swap
set swapfile
set directory=~/.cache/vim/swap

"" Backup files
set nobackup
set nowritebackup

"" Term
set mouse=a
set shell=zsh
set lazyredraw
set ttyfast
set ttimeout
set timeoutlen=750
set ttimeoutlen=10

"" Misc
set autoread
set updatetime=500
set colorcolumn=80
" set splitright

"" @keybindings vim window
"" Easy window switching
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>

"" @keybindings vim settings
"" Open and edit .vimrc from inside vim
nnoremap <leader>ev :vsplit ~/.vimrc<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"" @keybindings remaps
"" Make 'Y' behave like 'D' or 'C'
nnoremap Y y$

"" @keybindings remaps
"" Keep cursor centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

"" @keybindings remaps
"" Undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

"" @keybindings remaps
"" Jumplist mutations
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

"" @keybindings remaps
"" Properly moving text up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==i
inoremap <C-k> <esc>:m .-2<CR>==i
nnoremap <leader>k :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==

"" @plugin vim-fugitive
"" Keybindings to power my git integration
nnoremap <leader>gs :G<CR>
nnoremap <leader>gh :diffget //3<CR>
nnoremap <leader>gu :diffget //2<CR>

"" @language js,jsx,ts,tsx
"" @see https://qiita.com/park-jh/items/b353319efb1823c36c05
"" @plugin superman
"" @what yoyo
"" Javascript syntax highlighting
augroup MyVimrc
  autocmd!
augroup END

function! EnableJavascript()
  " Setup used libraries
  let g:used_javascript_libs = 'jquery,underscore,react,flux,jasmine,d3'
  let b:javascript_lib_use_jquery = 1
  let b:javascript_lib_use_underscore = 1
  let b:javascript_lib_use_react = 1
  let b:javascript_lib_use_flux = 1
  let b:javascript_lib_use_jasmine = 1
  let b:javascript_lib_use_d3 = 1
endfunction
autocmd MyVimrc FileType javascript,javascript.jsx call EnableJavascript()

"" @plugin kite
" All the languages Kite supports
let g:kite_supported_languages = ['*']

"" @language js,jsx,ts,tsx
"" Read specific language files more efficiently
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
"
"" @plugin coc.nvim
"" Enable global extension
let g:coc_global_extensions = [
  \ 'coc-docker',
  \ 'coc-eslint',
  \ 'coc-git',
  \ 'coc-json',
  \ 'coc-prettier',
  \ 'coc-python',
  \ 'coc-react-refactor',
  \ 'coc-rust-analyzer',
  \ 'coc-sumneko-lua',
  \ 'coc-sh',
  \ 'coc-solargraph',
  \ 'coc-sql',
  \ 'coc-tsserver',
  \ 'coc-vimlsp',
  \ 'coc-yaml'
\ ]

"" @plugin coc.nvim
"" Enable eslint & prettier from node_modules
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif


"" @brew ripgrep
"" rg があれば使う
if executable('rg')
 set grepprg=rg\ --vimgrep
 set grepformat=%f:%l:%c:%m
endif
 
"" 自動QuickFix
au QuickfixCmdPost make,grep,grepadd,vimgrep copen

"" @plugin coc.nvim
"" Tab completion
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"" @plugin coc.nvim
"" @what <C-space> completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

"" @plugin coc.nvim
"" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gv :vsplit<cr><Plug>(coc-definition)
nmap <silent> gs :split<cr><Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"" @plugin coc.nvim
"" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

"" @plugin coc.nvim
"" Highlight the symbol and its reference when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

"" @plugin coc.nvim
"" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

"" @plugin coc.nvim
"" Formatting selected code
xmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

"" @plugin coc.nvim
"" Apply AutoFix to problem on the current line
nmap <leader>qf <Plug>(coc-fix-current)

"" @plugin coc.nvim
"" Run the Code Lens action on the current line
nmap <leader>cl <Plug>(coc-codelens-action)

"" @plugin coc.nvim
"" Add `:Format` command to format current buffer
command! -nargs=0 F :call CocActionAsync('format')

"" @plugin coc.nvim
"" Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call CocAction('fold', <f-args>)

"" @plugin coc.nvim
"" Add `:OR` command to organize imports of the current buffer
command! -nargs=0 OR :call CocActionAsync('runCommand', 'editor.action.organizeImport')

"" @plugin coc.nvim
"" Mappings for CoCList
"" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
"" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
"" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
"" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
"" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
"" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
"" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
"" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"" @plugin airline
"" @what Show buffer number in airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

"" @plugin fern
"" @what remapping 
nnoremap <C-e> :<C-u>Fern . -drawer -toggle<CR>
nnoremap <C-E> :<C-u>Fern . -drawer -reveal=% -toggle<CR>

"" @plugin fern
"" @what create new directory from fern drawer
function! FernInit() abort
  nmap <buffer> <2-LeftMouse> <Plug>(fern-my-open-expand-collapse)
  nmap <buffer> n <Plug>(fern-action-new-path)
  nmap <buffer> r <Plug>(fern-action-reload)
  nmap <buffer> h <Plug>(fern-action-open:split)
  nmap <buffer> v <plug>(fern-action-open:vsplit)
  nmap <buffer><nowait> < <Plug>(fern-action-leave)
  nmap <buffer><nowait> > <Plug>(fern-action-enter)
endfunction

"" @plugin fern
"" @what initialize fern on open
" function! s:init_fern() abort
"   " Use 'select' instead of 'edit' for default 'open' action
"   nmap <buffer> <Plug>(fern-action-open) <Plug>(fern-action-open:select)
" endfunction

augroup fern-custom
  autocmd!
  autocmd FileType fern setlocal norelativenumber | setlocal nonumber | call FernInit()
augroup END


"" @plugin FixCursorHold
"" @what configure plugin
let g:cursorhold_updatetime = 100

"" @plugin fern-renderer-nerdfont
"" @what allow fern to use nerdfont
let g:fern#renderer = "nerdfont"

"" @config python
"" Link Python for Neovim
let g:python_host_prog='/usr/bin/python'
let g:python3_host_prog='/usr/bin/python3'

"" @plugin $themes
"" Enable theme
if (has('termguicolors'))
  set termguicolors
endif

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set cursorline
colorscheme gruvbox
set background=dark

"" Transparant backgroudn
hi Normal guibg=NONE ctermbg=NONE

"" @plugin fern
"" @what Show hidden dotfiles in Fern
let g:fern#default_hidden=1

"" @plugin treesitter
"" @what configure typescript/tsx w/ treesitter
lua <<EOF
require('nvim-treesitter.configs').setup {
  ensure_installed = {
    "javascript",
    "typescript",
    "dockerfile",
    "scss",
    "yaml",
    "bash",
    "lua",
    "tsx",
    "vim",
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  },
}
EOF

"" @plugin fzf
"" @what Show preview on ? in ripgrep
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'Rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

"" @plugins fzf
"" Show preview in File
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

"" @plugins fzf-preview
" Find files using Telescope command-line sugar.
nnoremap <leader>, <cmd>Telescope find_files hidden=true<cr>
nnoremap <leader>fg <cmd>Telescope live_grep hidden=true<cr>
nnoremap <leader>fb <cmd>Telescope buffers hidden=true<cr>
nnoremap <leader>fh <cmd>Telescope help_tags hidden=true<cr>

"" @plugins toggleterm.nvim
"" @keybindings toggle terminal open/close with shortcut
nnoremap <C-t> <cmd>ToggleTerm<cr>
