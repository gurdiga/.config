setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
setlocal textwidth=80

setlocal spell spelllang=en_us
highlight clear SpellBad
highlight SpellBad cterm=underline

":he fo-table
setlocal formatoptions+=tn1
setlocal formatoptions-=ba 

nnoremap <buffer> <C-F> vipgq

"Alt-1
nnoremap <buffer> ¡ ^i# <Esc>^

"Alt-2
nnoremap <buffer> ™ ^i## <Esc>^

"Alt-3
nnoremap <buffer> £ ^i### <Esc>^

"Alt-4
nnoremap <buffer> ¢ ^i#### <Esc>^

" Alt-7 - make unordered list
vnoremap <buffer> ¶ :s/^\s*/\00. /g\|:nohlsearch\|:normal gpo^g<CR>

" Alt-8 - make ordered list
vnoremap <buffer> • :s/^\s*/\0* /g\|:nohlsearch<CR>

vnoremap <buffer> <C-K> <ESC>`<i[<ESC>`><Right>a]()<Left>
vmap <buffer> <C-I> S_e
vmap <buffer> <C-B> S*vf*S*E

" Alt-R
vnoremap <buffer> ® <ESC>`<i<span lang="ru"><ESC>`>15<Right>a</span>
