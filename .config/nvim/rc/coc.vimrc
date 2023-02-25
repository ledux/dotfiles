let g:coc_global_extensions = [ 'coc-tsserver', 'coc-json' ]

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
    let g:coc_global_extensions += [ 'coc-prettier' ]
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
    let g:coc_global_extensions += [ 'coc-eslint' ]
endif

nnoremap <silent> K :call CocAction('doHover')<CR>
nnoremap <leader>ca <Plug>(coc-codeaction)
nnoremap <leader>fc <Plug>(coc-fix-current)
nnoremap <leader>gd <Plug>(coc-definition)
nnoremap <leader>gy <Plug>(coc-type-definition)
nnoremap <leader>gi <Plug>(coc-implementation)
nnoremap <leader>gr <Plug>(coc-references)
nnoremap <leader>rn <Plug>(coc-rename)

" Give more space for displaying messages
set cmdheight=2

" default is 4000 ms
set updatetime=300

" Don't pass messages to |ins-completion-menu|
set shortmess+=c


if (has("nvim-0.5.0") || has("patch-8.1.1564"))
	set signcolumn=number
else
	set signcolumn=yes
endif

if (has('nvim'))
	inoremap <silent><expr> <c-space> coc#refresh()
else
	inoremap <silent><expr> <c-@> coc#refresh()
endif

