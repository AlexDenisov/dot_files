 set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'
 Bundle 'ctrlp.vim'
 Bundle 'scrooloose/nerdtree'
 Bundle 'ruby.vim'
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 Bundle 'Tagbar'
 Bundle 'delimitMate.vim'
 Bundle 'endwise.vim'
 Bundle 'fugitive.vim'
 Bundle 'Gundo'
 Bundle 'Syntastic'
 Bundle 'surround.vim'
 Bundle 'Shougo/neocomplcache.git'
 Bundle 'Shougo/neosnippet.git'
 Bundle 'sudo.vim'
 Bundle 'preview'
 Bundle 'Match-Bracket-for-Objective-C'
 Bundle 'cocoa.vim'
 Bundle 'kiwi.vim'
 Bundle 'bbommarito/vim-slim'
 Bundle 'clang-complete'
 Bundle 'eraserhd/vim-ios'
 Bundle 'mojo.vim'


filetype plugin indent on

set nobackup
set noswapfile
set tabstop=2
set shiftwidth=2
set expandtab
set gfn=Bitstream\ Vera\ Sans\ Mono:h14
set nu

:colorscheme neverland

" set guifont=Consolas\ for\ Powerline

if has('gui_running')
  set transparency=15
endif

  autocmd VimEnter * TagbarToggle
  autocmd VimEnter * NERDTree

" nnoremap <F3> :NumbersToggle<CR>
noremap <F5> :GundoToggle<CR>
nmap <F8> :TagbarToggle<CR>

noremap <c-s-tab> :tabprevious<cr>
noremap <c-tab> :tabnext<cr>

map <s-tab> <C-w><S-w>
map <tab> <C-w><C-w>

" neocomplcache settings

 let g:neocomplcache_enable_at_startup = 1
 let g:neocomplcache_enable_smart_case = 1
 let g:neocomplcache_enable_camel_case_completion = 1
 let g:neocomplcache_enable_underbar_completion = 1
 let g:neocomplcache_min_syntax_length = 1
 let g:neocomplcache_disable_auto_complete = 1
 let g:neocomplcache_enable_fuzzy_completion = 1
 let g:neocomplcache_enable_ignore_case = 1

 map <C-k>     <Plug>(neocomplcache_snippets_expand)
 smap <C-k>     <Plug>(neocomplcache_snippets_expand)
 inoremap <expr><C-g>     neocomplcache#undo_completion()
 inoremap <expr><C-l>     neocomplcache#complete_common_string()
 imap <C-Space>     <Plug>(neocomplcache_snippets_expand)
 smap <C-Space>     <Plug>(neocomplcache_snippets_expand)
 imap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
 smap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

 imap <expr><C-Space>  neocomplcache#start_manual_complete()

 inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
 inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
 inoremap <expr><C-y>  neocomplcache#close_popup()
 inoremap <expr><C-e>  neocomplcache#cancel_popup()

 set shell=/bin/zsh

 au! BufRead,BufNewFile *.podspec setfiletype ruby
 au! BufRead,BufNewFile Podfile setfiletype ruby
 au! BufRead,BufNewFile *file setfiletype ruby

 augroup BWCCreateDir
   autocmd!
   autocmd BufWritePre * if expand("<afile>")!~#'^\w\+:/' && !isdirectory(expand("%:h")) | execute "silent! !mkdir -p ".shellescape(expand('%:h'), 1) | redraw! | endif
 augroup END

 " map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
 "
 
 nmap <silent> <C-N> :cn<CR>zv
 nmap <silent> <C-B> :cp<CR>zv

