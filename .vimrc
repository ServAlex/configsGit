set nocompatible              " be iMproved, required

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

Plugin 'christoomey/vim-tmux-navigator'
" gives unified navigation in vim splits and tmux panes

"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""" run :PluginInstall after updating this list

"##############################
" plugins not in vundle

" pidiction
filetype plugin on
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 10 

" try snipmate plugin

"##############################





" personal settings

syntax on
colo vibrantink_alex
"colo sorcerer_alex
"set t_Co=256
set t_ut=


" TODO: it's better to do this using ftplugin
" http://stackoverflow.com/a/5171586/3584944

"autocmd BufEnter * colo sorcerer_alex
"autocmd BufEnter * colo vibrantink_alex
"autocmd BufEnter *.sh colo vibrantink_alex


set laststatus=2


set rnu				" turn relative line numbering on
"set nu				"show line numbers
"set relativenumber		"lines numbered ralatively to cur line


set wildmenu			" enable suggestion menu for commands

set ic 				" set ignore case
set hls				" highlight search matches
set is				" incremenal search
set so=2			" center the line with search hit


" tabulations
set tabstop=4
set softtabstop=0 noexpandtab
"set noet	" do not replace tabs with spaces
set shiftwidth=4

				" bindings to center screen on the current search match
nnoremap <silent> n n:call <SID>MaybeMiddle()<CR>
nnoremap <silent> N N:call <SID>MaybeMiddle()<CR>
nnoremap <silent> * *:call <SID>MaybeMiddle()<CR>
nnoremap <silent> g* g*:call <SID>MaybeMiddle()<CR>

" If cursor is in first or last line of window, scroll to middle line. More options added because of so=0
function! s:MaybeMiddle()
	if winline() == 1 || winline() == winheight(0) || winline() == 2 || winline() == 3 || winline() == winheight(0)-1 || winline() == winheight(0)-2
    normal! zz
	endif
endfunction

				" generate replace command with selected text
vnoremap # y<Esc>:%s/<C-r>"/<C-r>"/gc
				" generate replace command with word under cursor
nnoremap # :%s/<C-r><C-w>/<C-r><C-w>/gc

				" Note the extra space after the second \
set list lcs=tab:\ \ 

				" disable automatic insertion of comment line after comment line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

set textwidth=0			" disable wrapping of lines

" search motifications
nnoremap * *N
				" dont jump to next occurence on searching word under cursor
nnoremap <2-leftmouse> *N
				" select on double click

" switching betwen .h and .c files
map <F4> :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>
map <F4> :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>

set clipboard=unnamedplus

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>




if has("autocmd")
	  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[1 q"' | redraw!
	    au InsertEnter,InsertChange *
	        \ if v:insertmode == 'i' | 
	        \   silent execute '!echo -ne "\e[5 q"' | redraw! |
	        \ elseif v:insertmode == 'r' |
	        \   silent execute '!echo -ne "\e[3 q"' | redraw! |
	        \ endif
	      au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
      endif

" :so % reload settings from current file, works well with vimrc
