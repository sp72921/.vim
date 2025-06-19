""" Keymaps
nnoremap <silent> <leader>sc :source $MYVIMRC<CR>
nnoremap <silent> <leader>ss :source<CR>
nnoremap <silent> <leader>tn :tabnew<CR>
nnoremap <silent> <leader>l  :e $MYVIMRC<CR>
nnoremap <silent> <leader>t  :belowright terminal<CR>
nnoremap <silent> <leader>xs :w<CR>
nnoremap <silent> <leader>xk :bd %<CR>
nnoremap <silent> <leader>K  :bd<CR>
nnoremap <silent> <leader><Right> :bNext<CR>
nnoremap <silent> <leader><Left> :bp<CR>
nnoremap <silent> <leader>h   :cd $HOME/code<CR>
nnoremap <silent> <leader>xj  :Lexplore<CR>
nnoremap <silent> <leader>xd  :Sexplore<CR>
nnoremap <silent> <leader>`  :cnext<CR>
nnoremap <silent> <leader>~  :cnext<CR>
nnoremap <leader>xb :set nomore <Bar> :ls <Bar> :set more <CR>:b<Space>
tnoremap <Esc> <C-\><C-n>
inoremap jj <Esc>
map <Space> <leader>
nnoremap <silent> <CR> :noh<CR><CR>

" Window
nnoremap <leader>xo <C-W><C-W>
nnoremap <leader>x1 <C-W>o
nnoremap <silent> <leader>x2 :split<CR>
nnoremap <silent> <leader>x3 :vsplit<CR>
nnoremap <leader>x0 <C-W>q
