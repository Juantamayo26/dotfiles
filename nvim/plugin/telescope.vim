lua require("juantamayo")


" nnoremap <leader>g :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
" nnoremap <leader>g <cmd>lua require('telescope.builtin').live_grep()<cr>
" nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
" nnoremap <Leader>pf :lua require('telescope.builtin').find_files()<CR>
" nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
" nnoremap <leader>vh :lua require('telescope.builtin').help_tags()<CR>

nnoremap <leader>b :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>va :lua require('theprimeagen.telescope').anime_selector()<CR>
nnoremap <leader>gw :lua require('telescope').extensions.git_worktree.git_worktrees()<CR>
nnoremap <leader>gm :lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>
nnoremap <leader>ga :lua require('telescope.builtin').git_branches()<CR>
