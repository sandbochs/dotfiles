let g:terminal_color_0  = '#2e3436'
let g:terminal_color_1  = '#cc0000'
let g:terminal_color_2  = '#4e9a06'
let g:terminal_color_3  = '#c4a000'
let g:terminal_color_4  = '#3465a4'
let g:terminal_color_5  = '#75507b'
let g:terminal_color_6  = '#0b939b'
let g:terminal_color_7  = '#d3d7cf'
let g:terminal_color_8  = '#555753'
let g:terminal_color_9  = '#ef2929'
let g:terminal_color_10 = '#8ae234'
let g:terminal_color_11 = '#fce94f'
let g:terminal_color_12 = '#729fcf'
let g:terminal_color_13 = '#ad7fa8'
let g:terminal_color_14 = '#00f5e9'
let g:terminal_color_15 = '#eeeeec'
" ================ General Config ====================
set number                      " Line numbers are good
set backspace=indent,eol,start  " Allow backspace in insert mode
set history=1000                " Store lots of :cmdline history
set showcmd                     " Show incomplete cmds down the bottom
set showmode                    " Show current mode down the bottom
set gcr=a:blinkon0              " Disable cursor blink
set visualbell                  " No sounds
set autoread                    " Reload files changed outside vim

" This makes vim act like all other editors, buffers can exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" If you visually select something and hit paste
" that thing gets yanked into your buffer. This
" generally is annoying when you're copying one item
" and repeatedly pasting it. This changes the paste
" command in visual mode so that it doesn't overwrite
" whatever is in your paste buffer.
"
"vnoremap p "_dP

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

set cb=unnamedplus

" Keymappings
imap jk <Esc>
imap jj <Esc>
tmap <C-j><C-k> <C-\><C-n>
let mapleader =" "
nmap <silent> gcp <c-_>p  " tComment
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>ig :IndentGuidesToggle<CR>
nmap <c-p> :FZF<CR>

" Vim Pane Movment
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
tmap <C-j> <C-\><C-n>

" NVim Terminal
tnoremap jk <C-\><C-n>
tnoremap jj <C-\><C-n>
if has("nvim")
  au TermOpen * tnoremap <buffer> <Esc> <c-\><c-n>
  au FileType fzf tunmap <buffer> <Esc>
endif

" Indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" FILETYPES 
" Solidity
au FileType solidity setlocal ts=4 sts=4 sw=4

" Typescript React
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact

" Typescript Specific Config
" https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" Turn off Swap Files
set noswapfile
set nobackup
set nowb

" Search
set incsearch        " Find the next match as we type the search
set hlsearch         " Highlight searches by default
set viminfo='100,f1  " Save up to 100 marks, enable capital marks
set ignorecase       " Ignore case when searching...
set smartcase        " ...unless we type a capital

" Persistent Undo
silent !mkdir ~/.config/nvim/backups > /dev/null 2>&1
set undodir=~/.config/nvim/backups
set undofile

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" Folding
set foldmethod=indent   " fold based on indent
set foldnestmax=3       " deepest fold is 3 levels
set nofoldenable        " dont fold by default

"" Autocompletion
set wildmenu                " enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ " stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*node_modules

" FZF
set rtp+=/opt/homebrew/bin/fzf

" Fonts
set encoding=utf-8

" =============== Dein Package Manager ===============
if &compatible
  set nocompatible
endif

" Required:
set runtimepath+=/Users/elliot/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/elliot/.cache/dein')
  call dein#begin('/Users/elliot/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/elliot/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " My plugins
  call dein#add('mhartington/oceanic-next')
  call dein#add('vim-airline/vim-airline')
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-abolish')
  "call dein#add('othree/yajs.vim.git')
  "call dein#add('othree/javascript-libraries-syntax.vim')
  call dein#add('pangloss/vim-javascript')
  call dein#add('mxw/vim-jsx')
  "call dein#add('gavocanov/vim-js-indent')
  call dein#add('edkolev/tmuxline.vim.git')
  call dein#add('scrooloose/nerdtree.git')
  call dein#add('jistr/vim-nerdtree-tabs.git')
  call dein#add('tpope/vim-repeat.git')
  call dein#add('tpope/vim-surround.git')
  "call dein#add('tpope/vim-rails.git')
  call dein#add('vim-ruby/vim-ruby.git')
  call dein#add('vim-scripts/matchit.zip.git')
  call dein#add('tpope/vim-endwise.git')
  "call dein#add('mileszs/ack.vim')
  call dein#add('rking/ag.vim')
  call dein#add('mattn/gist-vim')
  call dein#add('godlygeek/tabular')
  call dein#add('AndrewRadev/splitjoin.vim')
  call dein#add('nathanaelkane/vim-indent-guides')
  "call dein#add('tpope/vim-haml')
  "call dein#add('kchmck/vim-coffee-script')
  "call dein#add('chrisbra/color_highlight.git')
  call dein#add('vim-scripts/camelcasemotion.git')
  call dein#add('gregsexton/gitv')
  call dein#add('briandoll/change-inside-surroundings.vim.git')
  call dein#add('nelstrom/vim-visual-star-search')
  call dein#add('airblade/vim-gitgutter.git')
  call dein#add('MarcWeber/vim-addon-mw-utils.git')
  call dein#add('tpope/vim-markdown.git')
  call dein#add('jtratner/vim-flavored-markdown.git')
  call dein#add('groenewege/vim-less.git')
  call dein#add('majutsushi/tagbar.git')
  call dein#add('tomtom/tcomment_vim.git')
  call dein#add('tomtom/tlib_vim.git')
  "call dein#add('digitaltoad/vim-jade')
  call dein#add('wavded/vim-stylus')
  call dein#add('gcmt/taboo.vim')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('w0rp/ale')
  call dein#add('haya14busa/incsearch.vim')
  call dein#add('haya14busa/incsearch-fuzzy.vim')
  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 }) 
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
  call dein#add('TovarishFin/vim-solidity')
  call dein#add('iamcco/markdown-preview.nvim', {'on_ft': ['markdown', 'pandoc.markdown', 'rmd'],
					\ 'build': 'sh -c "cd app && yarn install"' })

  " Typescript
  call dein#add('prettier/vim-prettier', {'build': 'npm install'})
  call dein#add('peitalin/vim-jsx-typescript')
  call dein#add('leafgarland/typescript-vim')
  call dein#add('jparise/vim-graphql')
  call dein#add('neoclide/coc.nvim', { 'merged': 0, 'rev': 'release' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable


" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

" =============== Plugin Configs ===============
" Oceanic Next
if (has("termguicolors"))
 set termguicolors
endif

"let g:used_javascript_libs='underscore,react,chai,jquery'
let g:jsx_ext_required=0
let g:javascript_plugin_flow = 1

syntax enable
colorscheme OceanicNext
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" CoC
let g:coc_global_extensions = ['coc-tsserver']
" nnoremap <silent> K :call CocAction('doHover')<CR>
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

function! ShowDocIfNoDiagnostic(timer_id)
  if (coc#float#has_float() == 0 && CocHasProvider('hover') == 1)
    silent call CocActionAsync('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" Airline
set laststatus=2
let g:airline_theme='oceanicnext'
let g:airline_powerline_fonts=1

" CamelCaseMotion
map w <Plug>CamelCaseMotion_w
map b <Plug>CamelCaseMotion_b
map e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

" NERDTree settings
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30

" IndentGuides
hi IndentGuidesEven ctermbg=6
hi IndentGuidesOdd ctermbg=2
let g:indent_guides_guide_size = 2

" vim-devicons
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''

" Taboo
set sessionoptions+=tabpages,globals
let g:airline#extensions#taboo#enabled = 1
let g:taboo_tab_format = "%N %f%m"

" via: http://rails-bestpractices.com/posts/60-remove-trailing-whitespace
" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
  let _s=@/
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfunction
command! StripTrailingWhitespaces call <SID>StripTrailingWhitespaces()
nmap <leader>w :StripTrailingWhitespaces<CR>

" Asynchronous Lint Engine (ale)
let g:ale_linters = { 'javascript': ['eslint'], 'typescript': ['eslint'] }
let g:ale_fixers = { 'javascript': ['eslint', 'prettier'] }
let g:ale_fix_on_save = 1
let g:ale_lint_on_enter = 1

" resize window
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
