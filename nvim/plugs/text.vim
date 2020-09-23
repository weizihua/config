" Convert cammelCase to underscore
" TODO: Not finished, need to make the command accept parameter % or .
command! CamelCaseToUnderscore :s/\(\l\)\(\u\)/\1\_\l\2/gc
