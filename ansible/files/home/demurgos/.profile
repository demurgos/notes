export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/opt/emsdk:$PATH"
# export PATH="/opt/emsdk:/opt/emsdk/clang/fastcomp/build_incoming_64/bin:/opt/emsdk/emscripten/incoming:$PATH"

# Uninstalled:
# export PATH="$PATH:/opt/anaconda/bin"

export PATH="$HOME/.gem/ruby/2.6.0/bin:${PATH}"
export PATH="${HOME}/.yarn/bin:${PATH}"
export PATH="/opt/spark/stable/bin:$PATH"

export GPG_TTY=$(tty)

export MAKEFLAGS="-j 8"

export EDITOR=nano

# Npm library to run pre-commit hooks
export HUSKY_USE_YARN=1

# Use KDE file picker for Firefox (also requires xdg-desktop-portal and xdg-desktop-portal-kde)
export GTK_USE_PORTAL=1
export BROWSER="firefox"
