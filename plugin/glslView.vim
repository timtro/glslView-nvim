
command! -nargs=* -bar GlslView :lua require'glslView'.glslView({ <f-args> })
" autocmd! BufNewFile,BufRead  *.frag GlslView
