alias gst='git status'
alias gco='git checkout'
alias cat=ccat
alias gprune="gco trunk && git pull --prune && git branch --format '%(refname:short) %(upstream:track)' | awk '\$2 == \"[gone]\" { print \$1 }' | xargs -r git branch -D"
alias ss='spring stop'
alias bi='bundle install'
alias be='bundle exec'
alias brewup='brew update && brew upgrade && brew upgrade --cask && brew autoremove && brew cleanup'
alias unl='ss && docker-compose down && docker-compose up -d'
alias code=code-insiders

alias dpsql='docker exec -it --user postgres global-pg psql'
