" Base maps
nnoremap <space><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <silent><leader>w :w<CR> :edit<CR>
nnoremap Y y$

" Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-1<CR>==

" Keeping cursor centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Undo break points
inoremap , ,<C-g>u
inoremap . .<C-g>u
inoremap ; ;<C-g>u
inoremap [ [<C-g>u
inoremap ! !<C-g>u
inoremap ? ?<C-g>

" Jumplist mutations
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

" Navigation
nnoremap <leader>v <cmd>vsplit<CR>
nnoremap <leader>s <cmd>split<CR>
nnoremap <C-l> <cmd>bn<CR>
nnoremap <C-h> <cmd>bp<CR>
nnoremap <S-q> <cmd>bd<CR>
nnoremap <leader>0 0gt
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt

" Clipboard
vnoremap <leader>p "_dP
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

" Telescope
nnoremap <C-p> <cmd>Telescope git_files<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>lg <cmd>Telescope live_grep<CR>
nnoremap <leader>b <cmd>Telescope buffers<CR>
nnoremap <leader>ht <cmd>Telescope help_tags<CR>
nnoremap <leader>gs <cmd>Telescope git_status<CR>

" Commenter
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" LSP
nmap <silent>gd :lua vim.lsp.buf.definition()<CR>
nmap <silent>gi :lua vim.lsp.buf.implementation()<CR>
nmap <silent>gr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>sh :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>rn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>ca :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>sd :lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <leader>gn :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <leader>vll :call LspLocationList()<CR>
nnoremap F :lua vim.lsp.buf.formatting()<CR>
nnoremap K :lua vim.lsp.buf.hover()<CR>

" Prettier
nnoremap <silent><leader>f :Prettier<CR>

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
