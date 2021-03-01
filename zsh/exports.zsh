# NVM_DIR is referenced in some of our other dotfiles:
export NVM_DIR="$HOME/.nvm"

# Tell the system to use programs installed by Homebrew:
export PATH="/usr/local/sbin:$PATH"

# Python package manager used on PFML
# https://python-poetry.org/docs/#installation
export PATH="$HOME/.poetry/env:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"