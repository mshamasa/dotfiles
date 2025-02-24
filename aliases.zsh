# Example aliases
# alias canary="open -a Google\ Chrome\ Canary --args --disable-web-security --user-data-dir='/tmp/canary_dev'"
# alias chrome="open -a Google\ Chrome --args --disable-web-security --user-data-dir='/tmp/chrome_dev'"

# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"

# Git
alias gst="git status"
alias gb="git branch"
alias gl="git log --oneline"
alias amend="git add . && git commit --amend --no-edit"
# alias commit="git add . && git commit -m"
alias fp="git fetch --all -p && git pull"
alias pop="git stash pop"
alias stash="git stash -u"
