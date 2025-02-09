export FZF_CTRL_T_OPTS="
  --walker-skip .git,node_modules,target
  --preview 'if [ -d {} ]; then tammy {}; else bat -n --color=always {}; fi'
  --header 'C-o to open nvim, C-s to use sudoedit, C-r to remove, C-x to chmod +x'
  --multi --bind 'ctrl-o:execute(nvim {+})'
  --multi --bind 'ctrl-s:execute(sudoedit {+})'
  --multi --bind 'ctrl-r:become(rm -rf {+})'
  --multi --bind 'ctrl-x:become(chmod +x {+})'"

export FZF_CTRL_R_OPTS="
  --bind 'ctrl-y:execute-silent(echo -n {2..} | wl-copy)'
  --tmux 90%
  --header 'CTRL-Y to copy command into clipboard'
  --color header:italic"

export FZF_ALT_C_OPTS="
  --walker-skip .git,node_modules,target
  --tmux 90%
  --header 'C-o to open nvim, C-r to remove'
  --multi --bind 'ctrl-r:become(rm -rf {+})'
  --multi --bind 'ctrl-o:execute(nvim {+})'
  --preview 'tammy {}'"

export FZF_COMPLETION_OPTS='--border --info=rounded'
export FZF_COMPLETION_PATH_OPTS='--walker file,dir,follow,hidden'
export FZF_COMPLETION_DIR_OPTS='--walker dir,follow'
export FZF_DEFAULT_OPTS='--bind ctrl-k:preview-up,ctrl-j:preview-down'

zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza --icons=auto --tree $realpath'
zstyle ':fzf-tab:complete:nvim:*' fzf-preview 'bat -n --color=always $realpath'
zstyle ':fzf-tab:complete:y:*' fzf-preview 'eza --icons=auto --tree $realpath'
