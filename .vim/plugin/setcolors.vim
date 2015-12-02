" Change the color scheme from a list of color scheme names.
" Version 2010-09-12 from http://vim.wikia.com/wiki/VimTip341
" Press key:
"   F8                next scheme
"   F7          previous scheme
"   F6            random scheme
" Set the list of color schemes used by the above (default is 'all'):
"   :SetColors all              (all $VIMRUNTIME/colors/*.vim)
"   :SetColors my               (names built into script)
"   :SetColors blue slate ron   (these schemes)
"   :SetColors                  (display current scheme names)
" Set the current color scheme based on time of day:
"   :SetColors now
if v:version < 700 || exists('loaded_setcolors') || &cp
  finish
endif

let loaded_setcolors = 1
let s:cur = 0
"let s:mycolors = ['slate', 'torte', 'darkblue', 'delek', 'murphy', 'elflord', 'pablo', 'koehler']  " colorscheme names that we use to set color
"let s:mycolors = ['summerfruit256', 'synic', 'tabula', 'tango2', 'tango', 'taqua', 'tcsoft', 'tesla', 'tir_black', 'tolerable', 'torte', 'twilight', 'two2tango', 'vc', 'vibrantink', 'vimhut', 'vividchalk', 'vylight', 'winter', 'wombat256mod', 'wombat256', 'wombat', 'wood', 'wuye', 'xemacs', 'xoria256', 'zenburn', 'zendnb', 'zenesque', 'zmrok']
"let s:mycolors = ['slate', 'torte', 'darkblue', 'delek', 'murphy', 'elflord', 'pablo', 'koehler', 'adaryn', 'adrian', 'aiseered', 'anokha', 'anotherdark', 'aqua', 'astroboy', 'astronaut', 'asu1dark', 'autumn2', 'autumnleaf', 'autumn', 'baycomb', 'bclear', 'bigbang', 'biogoo', 'blackbeauty', 'blacksea', 'bluegreen', 'borland', 'breeze', 'brookstream', 'buttercream', 'calmar256', 'calmar256', 'calmbreeze', 'camo', 'candycode', 'candy', 'chela_light', 'chocolateliquor', 'clarity', 'cleanphp', 'colorer', 'dante', 'darkblue2', 'darkbone', 'darkburn', 'darkslategray', 'darkspectrum', 'darkZ', 'dawn', 'deepblue', 'dejavu', 'denim', 'desert256', 'desertEx', 'desert', 'dusk', 'dw_blue', 'dw_cyan', 'dw_green', 'dw_orange', 'dw_purple', 'dw_red', 'dw_yellow', 'earendel', 'eclipse', 'ekvoli', 'fine_blue2', 'fine_blue', 'fnaqevan', 'fog', 'freya', 'fruit', 'fruity', 'fu', 'gaea', 'gentooish', 'github', 'golden', 'greyhouse', 'guardian', 'habilight', 'herald', 'impact', 'imperial', 'inkpot', 'intellij', 'ironman', 'jammy', 'jellybeans', 'kellys', 'leo', 'lettuce', 'liquidcarbon', 'lucius', 'luinnar', 'manuscript', 'manxome', 'marklar', 'maroloccio', 'martin_krischik', 'masmed', 'matrix', 'mayansmoke', 'metacosm', 'mickeysoft', 'midnight2', 'midnight', 'mizore', 'molokai', 'montz', 'moria', 'moss', 'motus', 'Mustang', 'navajo', 'navajo', 'neon', 'neverness', 'newspaper', 'nightshimmer', 'night', 'night_vision', 'no_quarter', 'northland', 'nuvola', 'oceanblack', 'oceandeep', 'oceanlight', 'olive', 'omen', 'papayawhip', 'paradox', 'peaksea', 'print_bw', 'psclone', 'pyte', 'railscasts2', 'railscasts', 'rdark', 'relaxedgreen', 'robinhood', 'rootwater', 'satori', 'scame', 'sea', 'settlemyer', 'sienna', 'silent', 'simpleandfriendly', 'softblue', 'solarized', 'sorcerer', 'soso', 'spring', 'summerfruit256', 'synic', 'tabula', 'tango2', 'tango', 'taqua', 'tcsoft', 'tesla', 'tir_black', 'tolerable', 'torte', 'twilight', 'two2tango', 'vc', 'vibrantink', 'vimhut', 'vividchalk', 'vylight', 'winter', 'wombat256mod', 'wombat256', 'wombat', 'wood', 'wuye', 'xemacs', 'xoria256', 'zenburn', 'zendnb', 'zenesque', 'zmrok']
let s:mycolors = ['torte', 'elflord', 'adaryn', 'adrian', 'aqua', 'candycode', 'chocolateliquor', 'eclipse', 'jellybeans', 'Mustang', 'railscasts', 'sorcerer', 'sorcerer_alex', 'tir_black', 'vibrantink', 'vibrantink_alex', 'vividchalk', 'wombat256mod']



" Set list of color scheme names that we will use, except
" argument 'now' actually changes the current color scheme.
function! s:SetColors(args)
"  if len(a:args) == 0
    echo 'Current color scheme names:'
    let i = 0
    while i < len(s:mycolors)
      echo '  '.join(map(s:mycolors[i : i+4], 'printf("%-14s", v:val)'))
      let i += 5
    endwhile
"  elseif a:args == 'all'
"    let paths = split(globpath(&runtimepath, 'colors/*.vim'), "\n")
"    let s:mycolors = map(paths, 'fnamemodify(v:val, ":t:r")')
"    echo 'List of colors set from all installed color schemes'
"  elseif a:args == 'my'
"    let c1 = 'default elflord peachpuff desert256 breeze morning'
"    let c2 = 'darkblue gothic aqua earth black_angus relaxedgreen'
"    let c3 = 'darkblack freya motus impact less chocolateliquor'
"    let s:mycolors = split(c1.' '.c2.' '.c3)
"    echo 'List of colors set from built-in names'
"  elseif a:args == 'now'
"    call s:HourColor()
"  else
"    let s:mycolors = split(a:args)
"    echo 'List of colors set from argument (space-separated names)'
"  endif
endfunction

command! -nargs=* SetColors call s:SetColors('<args>')

" Set next/previous/random (how = 1/-1/0) color from our list of colors.
" The 'random' index is actually set from the current time in seconds.
" Global (no 's:') so can easily call from command line.
function! NextColor(how)
  call s:NextColor(a:how, 1)
endfunction

" Helper function for NextColor(), allows echoing of the color name to be
" disabled.
function! s:NextColor(how, echo_color)

  if len(s:mycolors) == 0
    call s:SetColors()
  endif

  let cur = s:cur

  if exists('g:colors_name')
    let current = index(s:mycolors, g:colors_name)
  else
    let current = -1
  endif

  let missing = []
  let how = a:how
  let cur += how
  if (cur<0)
    let cur = len(s:mycolors)-1
  endif
  if (cur>len(s:mycolors)-1)
    let cur = 0 
  endif

  try
    execute 'colorscheme '.s:mycolors[cur]
  catch /E185:/
    call add(missing, s:mycolors[current])
  endtry

  redraw

  if len(missing) > 0
    echo 'Error: colorscheme not found:' join(missing)
  endif

  let s:cur = cur

  if (a:echo_color)
    echo cur '/' len(s:mycolors) ' ' g:colors_name 
  endif

endfunction

nnoremap <F8> :call NextColor(1)<CR>
nnoremap <F7> :call NextColor(-1)<CR>
nnoremap <F6> :call NextColor(0)<CR>

