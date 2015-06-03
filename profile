# Make mysql happy and start it up
# chown -R luveen.wadhwani:wheel /usr/local/Cellar
# chown -R luveen.wadhwani:wheel /usr/local/mysql
# [ -e /usr/local/var/mysql/lwadhwani.local.err ] || touch -f /usr/local/var/mysql/lwadhwani.local.err

# mysql.server start

export PATH=/usr/local/mysql/bin:$PATH

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
