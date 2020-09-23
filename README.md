# config
Arch Linux Config Files

# How to install
- run `sh install/install.sh`
- reboot
- run `sh install/post-install.sh`

# Intellij Idea Plugins
- String Manipulation
- IdeaVim
- KJump
- Cloud Code
- Gruvbox Theme
- Kubernetes

# Settings

" ===== Terminal Settings ===== {{{
" ----------------------------
" Add new line in normal mode
" ----------------------------
" To make the above working, need to change key mapping in terminal
"- iTerm2
"1. For a single Profile open Preferences → Profiles → Keys → [+] (Add)
"2. For all profiles open Preferences → Keys → [+] (Add)
"- Keyboard shortcut: (Hit Shift+Enter)
"- Action: Send Escape Sequence
"- Esc+ [13;2u
"- Repeat for Ctrl+Enter, with sequence: [13;5u
"
"- urxvt, append to your .Xresources file:
"-------------
"URxvt.keysym.S-Return:     \033[13;2u
"URxvt.keysym.C-Return:     \033[13;5u
"-------------
"
"- Alacritty, under key_bindings, add following to your ~/.config/alacritty/alacritty.yml:
"-------------
"- { key: Return,   mods: Shift,   chars: "\x1b[13;2u" }
"- { key: Return,   mods: Control, chars: "\x1b[13;5u" }
"-------------
