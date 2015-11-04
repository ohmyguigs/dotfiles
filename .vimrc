" Global configs
 colorscheme jellybeans 
 set encoding=utf-8
" temporary adjust, to use in macbook with fish
 set shell=sh
" on startup configs
 set number  
" Airline plugin
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#tabline#left_sep = ' '
 let g:airline#extensions#tabline#left_alt_sep = '|'
 let g:airline_theme = 'badwolf'
 let g:airline_powerline_fonts = 1 
 
" NerdTree plugin
 autocmd vimenter * NERDTree
 map <C-n> :NERDTreeToggle<CR>
 let g:nerdtree_tabs_open_on_console_startup = 1
 let g:nerdtree_tabs_focus_on_files = 1

" Syntad checkers for REac.js
 let g:syntastic_javascript_checkers = ['eslint']
 let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" Pathogen config
 execute pathogen#infect()
 syntax on
 filetype plugin indent on
