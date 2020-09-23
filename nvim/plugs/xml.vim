vnoremap <leader>xml= :!xmllint --format -<CR>
au FileType xml nnoremap <buffer> <leader>= :exec "%!python -c 'import sys;import xml.dom.minidom;s=sys.stdin.read();print xml.dom.minidom.parseString(s).toprettyxml()'"<CR>

