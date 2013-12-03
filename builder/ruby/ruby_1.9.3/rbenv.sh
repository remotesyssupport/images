# add rbenv to path
export PATH="/home/ubuntu/.rbenv/bin:$PATH"

# set default env vars
export RBENV_VERSION=1.9.3-p484
export RAILS_ENV=test

# initialize and set ruby version
eval "$(rbenv init -)"
rbenv global 1.9.3-p484