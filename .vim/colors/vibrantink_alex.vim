" modification of vibrantink.vim servalex1@gmail.com
" last change: 	29 Nov 2015

" Vim color scheme
"
" Name:         vibrantink_alex.vim
" Maintainer:   Jo Vermeulen <jo.vermeulen@gmail.com> 
" Last Change:  5 Mar 2009 
" License:      public domain
" Version:      1.3
"
" This scheme should work in the GUI and in xterm's 256 color mode. It
" won't work in 8/16 color terminals.
"
" I based it on John Lam's initial Vibrant Ink port to Vim [1]. Thanks
" to a great tutorial [2], I was able to convert it to xterm 256 color
" mode. And of course, credits go to Justin Palmer for creating the
" original Vibrant Ink TextMate color scheme [3].
"
" [1] http://www.iunknown.com/articles/2006/09/04/vim-can-save-your-hands-too
" [2] http://frexx.de/xterm-256-notes/
" [3] http://encytemedia.com/blog/articles/2006/01/03/textmate-vibrant-ink-theme-and-prototype-bundle

set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif

let g:colors_name = "vibrantink_alex"



if has("gui_running")
    highlight Normal guifg=White   guibg=Black
    highlight Cursor guifg=Black   guibg=Yellow
    highlight Keyword guifg=#FF6600
    highlight Define guifg=#FF6600
    highlight Comment guifg=#9933CC
    highlight Type guifg=White gui=NONE
    highlight rubySymbol guifg=#339999 gui=NONE
    highlight Identifier guifg=White gui=NONE
    highlight rubyStringDelimiter guifg=#66FF00
    highlight rubyInterpolation guifg=White
    highlight rubyPseudoVariable guifg=#339999
    highlight Constant guifg=#FFEE98
    highlight Function guifg=#FFCC00 gui=NONE
    highlight Include guifg=#FFCC00 gui=NONE
    highlight Statement guifg=#FF6600 gui=NONE
    highlight String guifg=#66FF00
    highlight Search guibg=White
    highlight CursorLine guibg=#323300
	hi Visual guifg=White	guibg=LightBlue gui=NONE

else
    set t_Co=256
	hi Visual ctermfg=White ctermbg=LightBlue
    highlight Normal ctermfg=White ctermbg=234
    highlight Cursor ctermfg=Black ctermbg=Yellow 
    highlight Keyword ctermfg=202 
    " orange
    highlight Define ctermfg=202	
    " orang
    highlight Comment ctermfg=98
    " light purple
    highlight Type ctermfg=85 
    " aqua
    highlight rubySymbol ctermfg=66 
    " grayish blue green
    highlight Identifier ctermfg=White 
    highlight rubyStringDelimiter ctermfg=82 
    " green
    highlight rubyInterpolation ctermfg=White 
    highlight rubyPseudoVariable ctermfg=66 
    " grayish blue green
    highlight Constant ctermfg=34 
    " green 
"    highlight Constant ctermfg=34 possible
    " blue
    highlight Function ctermfg=220 
    " yellow
    highlight Include ctermfg=220 
    " yellow
    highlight Statement ctermfg=202
    " orange
    highlight String ctermfg=82 
    " green
    hi Special ctermfg=6
    highlight Search ctermbg=White 
    highlight CursorLine cterm=NONE ctermbg=235
"    highlight CursorLine cterm=NONE ctermbg=246
    " dark gray
endif


