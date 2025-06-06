# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# Aliases
alias ll='ls -la'

# Path Exporting
export PATH="$HOME/.cargo/bin:$PATH"

# Startup Starship.rs 
eval "$(starship init bash)"

# Set Default Terminal Editor 
export VISUAL="/usr/bin/vim"
export EDITOR="$VISUAL"

# Set editor mode to vi 
set -o vi
