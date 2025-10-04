alias cls="clear"
alias mkd='mkdir -p'
alias mkf='touch'

# grep
alias grep='grep --color=auto --exclude-dir={.git}'

# go up
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# prevent accidental file operation
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

# find
alias findf='find . -type f -name'
alias findd='find . -type d -name'

# ls
if command -v eza &> /dev/null; then
    alias ls='eza --colour=auto'
    alias la='eza --almost-all'
    alias ld='eza -d'
    alias ll='eza -l --all'
else
    alias ls='ls --color=auto'
    alias la='ls --almost-all'
    alias ld='ls --directory'
    alias ll='ls -l --all --human-readable'
fi

# kubectl
if command -v kubectl &> /dev/null; then
    alias k='kubectl'
    alias kg='kubectl get'
    alias kd='kubectl describe'
    alias kl='kubectl logs'
    alias ka='kubectl apply'

    alias kdel='kubectl delete'
    alias kex='kubectl exec'
    alias kns='kubectl config set-context --current --namespace'
    alias kctx='kubectl config current-context'
fi

# neovim
if command -v nvim &> /dev/null; then
    alias nv='nvim'
    alias vimdiff='nvim -d'
    alias view='nvim -R'
fi

# terraform
if command -v terraform &> /dev/null; then
    alias tf='terraform'
    alias tfi='terraform init'
    alias tfp='terraform plan'
    alias tfa='terraform apply'
    alias tfd='terraform destroy'
    alias tfv='terraform validate'
    alias tff='terraform fmt -recursive'
    alias tfo='terraform output'
fi

# k9s
if command -v k9s &> /dev/null; then
    alias k9='k9s'
fi
