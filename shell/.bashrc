# --- Shell Agnostic ---
[[ -f "$HOME/.config/shell/env.sh" ]]   && source "$HOME/.config/shell/env.sh"
[[ -f "$HOME/.config/shell/func.sh" ]]  && source "$HOME/.config/shell/func.sh"
[[ -f "$HOME/.config/shell/alias.sh" ]] && source "$HOME/.config/shell/alias.sh"

# --- bash specific ---
[[ -f "$HOME/.config/bash/env.sh" ]]   && source "$HOME/.config/bash/env.sh"
[[ -f "$HOME/.config/bash/func.sh" ]]  && source "$HOME/.config/bash/func.sh"
[[ -f "$HOME/.config/bash/alias.sh" ]] && source "$HOME/.config/bash/alias.sh"

# --- Tool Integration ---
# https://github.com/starship/starship
if command -v starship >/dev/null 2>&1; then
  eval "$(starship init bash)"
fi

# https://github.com/junegunn/fzf
if command -v fzf >/dev/null 2>&1; then
  eval "$(fzf --bash)"
fi

# https://github.com/ajeetdsouza/zoxide
if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init bash)"
fi
