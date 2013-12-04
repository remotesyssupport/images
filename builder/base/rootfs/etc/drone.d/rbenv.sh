export PATH="/home/ubuntu/.rbenv/bin:$PATH"

# set default env vars
export RBENV_VERSION=2.0.0-p353
export RAILS_ENV=test

# initialize and set ruby version
eval "$(rbenv init -)"
rbenv global 2.0.0-p353