function! ToggleSplit()
  if !exists('t:splitType')
    let t:splitType = 'vertical'
  endif

  if t:splitType == 'vertical' " is vertical switch to horizontal
    windo wincmd K
    let t:splitType = 'horizontal'

  else " is horizontal switch to vertical
    windo wincmd H
    let t:splitType = 'vertical'
  endif
endfunction

""" Keymaps
nnoremap <silent> <leader>sc       :source $MYVIMRC<CR>
nnoremap <silent> <leader>ss       :source<CR>
nnoremap <silent> <leader>tn       :tabnew<CR>
nnoremap <silent> <leader>l        :e $MYVIMRC<CR>
nnoremap <silent> <leader>t        :belowright terminal<CR>
nnoremap <silent> <leader>xs       :w<CR>
nnoremap <silent> <leader>xk       :bd %<CR>
nnoremap <silent> <leader>K        :bd<CR>
nnoremap <silent> <leader><Right>  :bNext<CR>
nnoremap <silent> <leader><Left>   :bp<CR>
nnoremap <silent> <leader>h        :cd $HOME/code<CR>
nnoremap <silent> <leader>xj       :Lexplore<CR>
nnoremap <silent> <leader>xd       :Sexplore<CR>
nnoremap <silent> <leader>`        :cnext<CR>
nnoremap <silent> <leader>~        :cprev<CR>
tnoremap <Esc>                     <C-\><C-n>
nnoremap <silent> <CR>             :noh<CR><CR>
inoremap jj                        <Esc>
map <Space>                        <leader>

nnoremap <up>   gk
nnoremap <down> gj

" Window
nnoremap <leader>xo                <C-W><C-W>
nnoremap <leader>x1                <C-W>o
nnoremap <silent> <leader>x2       :split<CR>
nnoremap <silent> <leader>x3       :vsplit<CR>
nnoremap <leader>x0                <C-W>q
nnoremap <silent> <leader>xt       :call ToggleSplit()<cr>

" Git
nnoremap <silent> <leader>xg       :below Git<CR>
