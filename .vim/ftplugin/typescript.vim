setlocal shiftwidth=2 tabstop=2 expandtab

iabbrev <buffer> _fn () => {}

iabbrev <buffer> fn <Esc>:normal a_fn<CR>
  \i<CR>
  \<Esc><Up>f)i
  \<C-R>=Eatchar('\s')<CR>

iabbrev <buffer> tede <Esc>:normal a_fn<CR>
  \Idescribe("",<Space>
  \<Esc>A);
  \<Esc>F}i<CR><Up>
  \<Esc>f"a
  \<C-R>=Eatchar('\s')<CR>

iabbrev <buffer> teit <Esc>:normal a_fn<CR>
  \Iit("",<Space>
  \<Esc>A);
  \<Esc>F}i<CR><Up>
  \<Esc>^f"a
  \<C-R>=Eatchar('\s')<CR>

iabbrev <buffer> tebe <Esc>:normal a_fn<CR>
  \IbeforeEach(
  \<Esc>A);
  \<Esc>F}i<CR>
  \<Esc>O<Tab>
  \<C-R>=Eatchar('\s')<CR>

iabbrev <buffer> teaf <Esc>:normal a_fn<CR>
  \IafterEach(
  \<Esc>A);
  \<Esc>F}i<CR>
  \<Esc>O<Tab>
  \<C-R>=Eatchar('\s')<CR>
