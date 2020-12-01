# ZSH RELATED #
export ZSH="/home/samuel/.oh-my-zsh"
ZSH_THEME="robbyrussell"


# PLUGINS #
plugins=(git)

source $ZSH/oh-my-zsh.sh


# EXPORTS #
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/.linkerd2/bin
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# ALIASES #

alias g='git'

alias k='kubectl'
alias k='kubectl'
alias kg='kubectl get'
alias kgpo='kubectl get pod'
alias kgsvc='kubectl get svc'


# CUSTOM #
source <(kubectl completion zsh)
complete -F __start_kubectl k