
set mousehide                         " hide the mouse when typing text
"
"highlight Normal   guibg=grey90
"highlight Cursor   guibg=Blue   guifg=NONE
"highlight lCursor  guibg=Cyan   guifg=NONE
"highlight NonText  guibg=grey80
"highlight Constant gui=NONE     guibg=grey95
"highlight Special  gui=NONE     guibg=grey95
"
"-------------------------------------------------------------------------------
" Moving cursor to other windows:
"  shift-down   : change window focus to lower one (cyclic)
"  shift-up     : change window focus to upper one (cyclic)
"  shift-left   : change window focus to one on left
"  shift-right  : change window focus to one on right
"-------------------------------------------------------------------------------
nnoremap  <s-down>   <c-w>w
nnoremap  <s-up>     <c-w>W
nnoremap  <s-left>   <c-w>h
nnoremap  <s-right>  <c-w>l
"
"-------------------------------------------------------------------------------
" Some additional hot keys:
"  shift-F3  : call gvim file browser
"-------------------------------------------------------------------------------
 noremap  <silent> <s-F3>       :silent browse confirm e<CR>
inoremap  <silent> <s-F3>  <Esc>:silent browse confirm e<CR>
"
"-------------------------------------------------------------------------------
" toggle insert mode <--> normal mode with the <RightMouse>-key
"-------------------------------------------------------------------------------
nnoremap  <RightMouse>  <Insert>
inoremap  <RightMouse>  <ESC>
"
"-------------------------------------------------------------------------------
" use font with clearly distinguishable brackets: ()[]{}
"-------------------------------------------------------------------------------
"set guifont=Monospace\ 11
"set guifont=Consolas:h12:cANSI
"
" 
"colorscheme desert
"colo sorcerer
colo Mustang

set lines=40
set columns=120

set guioptions -=T		" turn off toolbar

:command! -nargs=1 -complete=file O tab drop <args>

"set guifont=Source\ Code\ Pro\ for\ Powerline "make sure to escape the spaces in the name properly
"set guifont
"let g:Powerline_symbols = 'unicode'
"let g:airline_powerline_fonts=1  

" mapping for control-[shift-]tab tab navigation, escapes edit mode
nnoremap <C-Tab> <C-PageDown> 
nnoremap <C-S-Tab> <C-PageUp> 

inoremap <C-Tab> <esc><C-PageDown> 
inoremap <C-S-Tab> <esc><C-PageUp> 

"colo Mustang
