0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

fpath=("${0:A:h}" $fpath)

autoload -Uz promptinit && promptinit

: ${GIT_PS1_SHOWCOLORHINTS=1}
: ${GIT_PS1_SHOWDIRTYSTATE=1}
: ${GIT_PS1_SHOWUPSTREAM=auto}

prompt felipec
