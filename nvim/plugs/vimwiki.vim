let default_wiki = {}
let default_wiki.auto_export = 0
let default_wiki.auto_toc = 0
let default_wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'sh': 'sh'}
let default_wiki.syntax = 'markdown'
let default_wiki.ext = '.md'

let system_wiki = copy(default_wiki)
let system_wiki.name = 'System'
let system_wiki.path = '~/Notes/system'
let system_wiki.path_html = '~/Notes/system/html'
let system_wiki.path_pdf = '~/Notes/system/pdf'

let bcr_wiki = copy(default_wiki)
let bcr_wiki.name = 'BCR'
let bcr_wiki.path = '~/Notes/bcr'
let bcr_wiki.path_html = '~/Notes/bcr/html'
let bcr_wiki.path_pdf = '~/Notes/bcr/pdf'

let arobs_wiki = copy(default_wiki)
let arobs_wiki.name = 'AROBS'
let arobs_wiki.path = '~/Notes/arobs'
let arobs_wiki.path_html = '~/Notes/arobs/html'
let arobs_wiki.path_pdf = '~/Notes/arobs/pdf'

let personal_wiki = copy(default_wiki)
let personal_wiki.name = 'Personal'
let personal_wiki.path = '~/Notes/personal'
let personal_wiki.path_html = '~/Notes/personal/html'
let personal_wiki.path_pdf = '~/Notes/personal/pdf'

let g:vimwiki_list = [personal_wiki, system_wiki, bcr_wiki, arobs_wiki]

" disable folding
let g:vim_markdown_folding_disabled = 1

" Disable default key mappings
let g:vim_markdown_no_default_key_mappings = 1

let g:vim_markdown_fenced_languages = ['csharp=cs', 'javascript', 'java', 'ini=dosini', 'json', 'xml', 'yaml', 'yml']
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_autowrite = 1

" Remap conflicting Vimwiki mappings
" TODO: change the mapping
nnoremap <leader>ni <Plug>VimwikiIndex
nnoremap <leader>nI <Plug>VimwikiDiaryIndex
nnoremap <leader>nm <Plug>VimwikiUISelect
