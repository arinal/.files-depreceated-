let mapleader = ","

call plug#begin('~/local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'lilydjwg/colorizer'
Plug 'ntpeters/vim-better-whitespace'
Plug 'machakann/vim-highlightedyank'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

Plug 'jacoborus/tender.vim'
Plug 'tomasr/molokai'
Plug 'NLKNguyen/papercolor-theme'
Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'derekwyatt/vim-scala'
Plug 'cespare/vim-toml'
Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'
Plug 'uarun/vim-protobuf'

call plug#end()

" colors
set termguicolors
syntax on
let g:onedark_hide_endofbuffer = 1
"let g:onedark_termcolors = 256
"colorscheme tender
colorscheme onedark
"colorscheme molokai
"colorscheme PaperColor
"colorscheme nord
"

" airline
"let g:airline_theme = 'tender'
let g:airline_theme='onedark'
set guifont=DroidSansMono\ Nerd\ Font\ 18
let g:airline_powerline_fonts = 1
let g:airline_left_sep = "\ue0c6"
let g:airline_left_alt_sep = "\ue0c4"
let g:airline_right_sep = "\ue0c2"
let g:airline_right_alt_sep = "\ue0c5"
let g:airline#extensions#coc#enabled = 1
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'


" nerdtree
nnoremap <leader>a :NERDTreeToggle<cr>

" nerdcommenter
filetype plugin on

" fzf
nnoremap <C-p> :FZF<cr>

" vim-scala
au BufRead,BufNewFile *.sbt set filetype=scala

" coc
set updatetime=300
set shortmess+=c
set signcolumn=yes
set nobackup
set nowritebackup
set cmdheight=2

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>ac <Plug>(coc-codeaction)
nnoremap <leader>f :call CocAction('format')<CR>
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <leader>rn <Plug>(coc-rename)

nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Notify coc.nvim that <enter> has been pressed.
" Currently used for the formatOnType feature.
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
      \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

set hidden
set ruler
set cursorline
set clipboard=unnamedplus
set mouse=a
set ignorecase
set smartcase
set relativenumber
set wildmode=longest,list,full

"nnoremap j gj
"nnoremap k gk
vnoremap <leader>s :'<,'>!sort -f<cr>
