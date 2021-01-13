#Clean up windows PATHs in env PATH on WSL
#echo "export PATH=`echo $PATH | tr ':' '\n' | grep -v /mnt/ | tr '\n' ':'`" >> ~/.bashrc

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/mnt/c/selenium_drivers

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

#Source rvm to load ruby

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# WSL DOCKER env
export DOCKER_HOST=tcp://localhost:2375

# List contents with colors for file types, (A)lmost all hidden files (without . and ..), in (C)olumns, with class indicators (F)
alias ls='ls --color=auto -ACF'

# List contents with colors for file types, (a)ll hidden entries (including . and ..), use (l)ong listing format, with class indicators (F)
alias ll='ls --color=auto -alF'export DOCKER_HOST=tcp://localhost:2375
export DOCKER_HOST=tcp://localhost:2375

#is it DNS? it's always DNS!
function dns() {
  printf "\n---------------------------------\nYour local dns results check resolv.conf\n"
  dig "${1:-google.com}" +short
  printf "\n---------------------------------\ngoogle dns 8.8.8.8 results\n"
  dig "${1:-google.com}" +short @8.8.8.8
  printf "\n---------------------------------\ncloudflare dns 1.1.1.1 results\n"
  dig "${1:-google.com}" +short @1.1.1.1
  echo
}

# Check my external IP
function ip() {
  printf "\n---------------------------------\ncheckip.amazonaws.com\n"
  curl http://checkip.amazonaws.com/
}
