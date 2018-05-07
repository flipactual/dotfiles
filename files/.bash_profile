# I don't know how PATH works and at this point I'm too afraid to ask
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/usr/local/opt/gnupg/libexec/gpgbin:$PATH"
export PATH=/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin:"${PATH}"

# No idea
export GPG_TTY=$(tty)

# Infinite history
export HISTSIZE=

# nvm stuff
export NVM_DIR="/Users/flipactual/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# I don't know what this does, but I'm afraid to remove it
shopt -s nocaseglob;
shopt -s histappend;
shopt -s cdspell;

# So tmux will look happy
[[ $TERM != "screen-256color" ]] && tmux

. ~/.aliases
. ~/.bash-powerline.sh
