let mapleader = ","

call plug#begin('~/local/share/nvim/plugged')

Plug 'tpope/vim-surround'
Plug 'Asheq/close-buffers.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'ntpeters/vim-better-whitespace'
Plug 'machakann/vim-highlightedyank'
Plug 'justinmk/vim-sneak'
Plug 'unblevable/quick-scope'
Plug 'nelstrom/vim-visual-star-search'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'wellle/targets.vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'dhruvasagar/vim-table-mode'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-eunuch'
Plug 'rbgrouleff/bclose.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-unimpaired'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'francoiscabrol/ranger.vim'
Plug 'turbio/bracey.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'ashisha/image.vim'
Plug 'lilydjwg/colorizer'
Plug 'joshdick/onedark.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'honza/vim-snippets'

call plug#end()

"{{{ sneak
let g:sneak#label = 1
let g:sneak#use_ic_scs = 1
"}}}

"{{{ colors
set termguicolors
syntax on

let g:onedark_hide_endofbuffer = 1
let g:onedark_terminal_italics = 1

let g:onedark_color_overrides = {
\ "black": { "gui": "#181C24", "cterm": "235", "cterm16": "0" },
\ "cursor_grey": { "gui": "#1C222C", "cterm": "236", "cterm16": "8" }
\}
colorscheme onedark
"}}}

"{{{colorizer
let g:colorizer_hex_alpha_first = 1
"}}}

"{{{ ranger
let g:ranger_map_keys = 0
map <leader>ft :Ranger<CR>
"}}}

"{{{ vim-fugitive
nnoremap ,gg :G<cr>
"}}}

"{{{ airline
let g:airline_theme='atomic'
set guifont=DroidSansMono\ Nerd\ Font\ 18
let g:airline_powerline_fonts = 1
let g:airline_left_sep = "\ue0c6"
let g:airline_left_alt_sep = "\ue0c4"
let g:airline_right_sep = "\ue0c2"
let g:airline_right_alt_sep = "\ue0c5"
let g:airline#extensions#coc#enabled = 1
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = "\ue0b8"
let g:airline#extensions#tabline#left_alt_sep = "\ue0b9"
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
"}}}

"{{{ rhubarb
let g:github_enterprise_urls = ['https://github.bamtech.co']
"}}}


"{{{ close-buffers
nnoremap <leader>bD :Bdelete hidden<CR>
"}}}

"{{{ fzf
nnoremap <C-p> :FZF<cr>
nnoremap ,s :Rg<cr>
nnoremap :: :Commands<cr>
nnoremap ,bb :Buffers<cr>
nnoremap ,bh :History<cr>
"}}}

"{{{ vim-scala
au BufRead,BufNewFile *.sbt set filetype=scala
"}}}

"{{{ vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
"}}}

"{{{ coc.vim
let g:coc_global_extensions = [
            \ 'coc-flutter',
            \ 'coc-yaml',
            \ 'coc-prettier',
            \ 'coc-emmet',
            \ 'coc-html',
            \ 'coc-snippets',
            \ 'coc-explorer',
            \ 'coc-go',
            \ 'coc-tsserver',
            \ 'coc-rls',
            \ 'coc-r-lsp',
            \ 'coc-python',
            \ 'coc-omnisharp',
            \ 'coc-metals',
            \ 'coc-lua',
            \ 'coc-json',
            \ 'coc-java',
            \ 'coc-fsharp',
            \ 'coc-css']

set hidden

" Some servers have issues with backup files
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have a bad experience with diagnostic messages with the default 4000.
set updatetime=300

" Don't give |ins-completion-menu| messages.
set shortmess+=c

" Always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Used in the tab autocompletion for coc
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [e <Plug>(coc-diagnostic-prev)
nmap <silent> ]e <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Used to expand decorations in worksheets
nmap <Leader>ws <Plug>(coc-metals-expand-decoration)
nmap <Leader>aa <Plug>(coc-metals-expand-decoration)

" Use K to either doHover or show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>F :call CocAction('format')<CR>

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType scala setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
" nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
:nmap <space>e :CocCommand explorer<CR>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Notify coc.nvim that <enter> has been pressed.
" Currently used for the formatOnType feature.
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
      \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Toggle panel with Tree Views
nnoremap <silent> <space>t :<C-u>CocCommand metals.tvp<CR>
" Toggle Tree View 'metalsBuild'
nnoremap <silent> <space>tb :<C-u>CocCommand metals.tvp metalsBuild<CR>
" Toggle Tree View 'metalsCompile'
nnoremap <silent> <space>tc :<C-u>CocCommand metals.tvp metalsCompile<CR>
" Reveal current current class (trait or object) in Tree View 'metalsBuild'
nnoremap <silent> <space>tf :<C-u>CocCommand metals.revealInTreeView metalsBuild<CR>
" If hidden is not set, TextEdit might fail.
"}}}

"{{{ coc-snippets
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
"}}}

" {{{ coc-explorer
nmap <leader>fa :CocCommand explorer<CR>
nmap <leader>ff :CocCommand explorer --preset floating<CR>
" }}}

"{{{ Free config
inoremap fd <Esc>

set foldmethod=marker
set hidden
set ruler
set cursorline
set clipboard=unnamedplus
set mouse=a
set ignorecase
set smartcase
set number relativenumber
set splitbelow splitright
set wildmode=longest,list,full

set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smartindent

set history=10000

vnoremap <leader>s :'<,'>!sort -f<cr>

function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

nnoremap <silent> <leader>wd :call <SID>StripTrailingWhitespaces()<CR>

aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.files/config/i3/config set filetype=i3config
aug end
"}}}

" Plug 'rafi/awesome-vim-colorschemes'
