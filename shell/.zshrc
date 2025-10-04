# --- Shell Agnostic ---
[[ -f "$HOME/.config/shell/env.sh" ]]   && source "$HOME/.config/shell/env.sh"
[[ -f "$HOME/.config/shell/func.sh" ]]  && source "$HOME/.config/shell/func.sh"
[[ -f "$HOME/.config/shell/alias.sh" ]] && source "$HOME/.config/shell/alias.sh"

# --- ZSH specific ---
[[ -f "$HOME/.config/zsh/env.sh" ]]   && source "$HOME/.config/zsh/env.sh"
[[ -f "$HOME/.config/zsh/func.sh" ]]  && source "$HOME/.config/zsh/func.sh"
[[ -f "$HOME/.config/zsh/alias.sh" ]] && source "$HOME/.config/zsh/alias.sh"

# --- History ---
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt histignorealldups # Ignore duplicate commands in history

# --- Options ---
HISTFILE=~/.zsh_history
setopt autocd
unsetopt beep

# --- Completion ---
autoload -Uz compinit
compinit

# --- Key Bindings ---
bindkey "^A" vi-beginning-of-line
bindkey "^E" vi-end-of-line

# --- Tool Integration ---
# https://github.com/starship/starship
if command -v starship >/dev/null 2>&1; then
  eval "$(starship init zsh)"
fi

# https://github.com/junegunn/fzf
if command -v fzf >/dev/null 2>&1; then
  source <(fzf --zsh)
fi

# https://github.com/ajeetdsouza/zoxide
if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi
