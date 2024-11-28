# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your dotfiles.
export DOTFILES=$HOME/dotfiles
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# source oh-my-zsh & antigen
source $ZSH/oh-my-zsh.sh
source $HOME/antigen.zsh

# source aliases
source $HOME/aliases.zsh
# source custom paths
source $HOME/path.zsh
# work specific variables
source ${HOME}/work.zsh

# User configuration
# Antigen Bundle Manager
# load oh-my-zsh library
antigen use oh-my-zsh

# defaults that come with oh my zsh
# antigen bundle tmux 
antigen bundle git
antigen bundle yarn 
antigen bundle command-not-found

# custom zsh plugins
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# zsh default themes
antigen theme romkatv/powerlevel10k

antigen apply

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
