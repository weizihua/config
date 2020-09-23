let default_wiki = {}
let default_wiki.auto_export = 0
let default_wiki.auto_toc = 0
let default_wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'sh': 'sh'}
let default_wiki.syntax = 'markdown'
let default_wiki.ext = '.md'

let work_wiki = copy(default_wiki)
let work_wiki.name = 'Work'
let work_wiki.path = '~/Notes/work'
let work_wiki.path_html = '~/Notes/work/html'
let work_wiki.path_pdf = '~/Notes/work/pdf'

let personal_wiki = copy(default_wiki)
let personal_wiki.name = 'Personal'
let personal_wiki.path = '~/Notes/personal'
let personal_wiki.path_html = '~/Notes/personal/html'
let personal_wiki.path_pdf = '~/Notes/personal/pdf'

let g:vimwiki_list = [personal_wiki, work_wiki]

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
nnoremap >wi <Plug>VimwikiIndex
nnoremap >wI <Plug>VimwikiDiaryIndex
nnoremap >wm <Plug>VimwikiUISelect
