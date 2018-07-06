so ~/.vim/plugins.vim

" Show line numbers
set number

" Configure netrw
let g:netrw_liststyle = 3
let g:netrw_banner = 0

" Update frequently
set updatetime=100

" Always show git gutter
if exists('&signcolumn')  " Vim 7.4.2201
  set signcolumn=yes
else
  let g:gitgutter_sign_column_always = 1
endif

" Configure lightline
let g:lightline = { 'colorscheme': 'one' }
set noshowmode
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif

" Normal delete action
set backspace=2

" Linting
let g:lightline.component_expand = {
  \   'linter_checking': 'lightline#ale#checking',
  \   'linter_warnings': 'lightline#ale#warnings',
  \   'linter_errors': 'lightline#ale#errors',
  \   'linter_ok': 'lightline#ale#ok',
  \ }
let g:lightline.component_type = {
  \   'linter_checking': 'left',
  \   'linter_warnings': 'warning',
  \   'linter_errors': 'error',
  \   'linter_ok': 'left',
  \ }
let g:lightline.active = {
  \   'left': [['mode', 'paste'], ['filename', 'modified'], ['lineinfo']],
  \   'right': [['linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok']]
  \ }

" Configure ALE
let g:ale_sign_column_always = 1
let g:ale_fixers = {
  \   'javascript': ['eslint'],
  \}
let g:ale_fix_on_save = 1
let g:ale_sign_error = '->'
let g:ale_sign_warning = '~>'

" tmuxline
let g:tmuxline_powerline_separators = 0

" Fix tabs
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
