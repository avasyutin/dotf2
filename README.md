# Dotf2

My personal dotfiles managed with Ansible.

## Prerequisites

```bash
brew install ansible
```

## Configuration

User information is configured in `provision/group_vars/all.yml`:
- `user_name` - Your full name for git config
- `user_email` - Your email for git config

## Installation

Full setup (installs homebrew packages and configures all tools):

```bash
make install
```

Update specific tools only:

```bash
make install tags=zsh,vim
make install tags=brew      # Install/update homebrew packages only
make install tags=git       # Configure git only
```

Available tags: `brew`, `git`, `zsh`, `vim`, `tmux`, `helix`, `starship`, `devtools`

## Post-Installation

### Vim Plugins

After vim is installed, open vim and run:

```vim
:PackUpdate
```

Then restart vim.

### Secrets

Create `~/.zshrc.secrets` for any environment variables that should not be committed to git.

