# Dotf2

## VIM Plugins

After vim was installed run it and execute:

1. :PackUpdate (and restart vim).

## Pass variables to the playbook from command line

``` shell
$ ansible-playbook -i provision/inventory.ini provision/playbook.yml --extra-vars='user_name="John Doe" user_email=john.doe@gmail.com'
```

## Mac & Homebrew reminder

```
$ brew install \
  ag \
  ansible \
  awscli \
  bash \
  cowsay \
  curl \
  dive \
  fortune \
  fzf \
  git \
  git-secret \
  go \
  golangci-lint \
  gpg \
  htop \
  imagemagick \
  nvm \
  postgresql@15 \
  rbenv ruby-build \
  redis \
  rg \
  shared-mime-info \
  terraform \
  tmux \
  tmuxp \
  vim \
  wget \
  zsh \
  pwgen \
  jpegoptim \
  nvim
```
