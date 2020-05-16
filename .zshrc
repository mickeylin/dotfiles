# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zplug/init.zsh

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt notify

# bind key
bindkey "^[[A"    history-substring-search-up
bindkey "^[[B"    history-substring-search-down
bindkey "^[[1~"   beginning-of-line
bindkey "^[[7~"   beginning-of-line
bindkey "^[[8~"   end-of-line
bindkey "^[[4~"   end-of-line
bindkey "^[[3~"   delete-char

# End of lines configured by zsh-newuser-install

# zplug plugins

zplug "romkatv/powerlevel10k", as:theme
zplug "chrissicool/zsh-256color"
# zplug "plugins/git", from:oh-my-zsh
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-autosuggestions"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# To customize prompt, run `p10k configure` or edit /net/gcs/106/0656084/.p10k.zsh.
[[ ! -f /net/gcs/106/0656084/.p10k.zsh ]] || source /net/gcs/106/0656084/.p10k.zsh


export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1
