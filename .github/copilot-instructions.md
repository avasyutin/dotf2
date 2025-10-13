# Dotfiles Management System

This is a personal dotfiles repository using **Ansible for provisioning** and **symlink-based configuration management**. The architecture separates provisioning logic from configuration files.

## Architecture Overview

- `dotfiles/` - Configuration files for various tools (zsh, vim, tmux, helix, etc.)
- `provision/install.yml` - Single consolidated playbook with all setup tasks
- `provision/group_vars/all.yml` - Global variables (user info, paths)
- `Makefile` - Convenient targets for running the playbook

## Key Workflows

### Initial Setup
```bash
make install
```

### Selective Tool Updates
Use tags to run specific tool configurations:
```bash
make install tags=zsh,vim
make install tags=brew  # Install homebrew packages only
```

### Direct Ansible Usage
```bash
ansible-playbook provision/install.yml
ansible-playbook provision/install.yml --tags zsh,vim
```

### Vim Plugin Management
After initial vim setup, manually run in vim:
```vim
:PackUpdate
```

## Configuration Patterns

### Ansible Task Structure
All tasks are consolidated in `provision/install.yml`:
- Uses `dotfiles_dir` variable for source paths
- Creates symlinks with `state=link force=yes`
- Organized by tool with consistent tagging

Example tasks:
```yaml
- name: symlink vim config
  file: src={{ dotfiles_dir }}/vim/vimrc.vim dest=~/.vimrc state=link force=yes
  tags: vim
```

### Dotfile Organization
- **Vim**: Modular structure with `vimrc.vim` sourcing files from `vimscript/`
- **Zsh**: Single `zshrc` with zinit plugin manager and performance timing
- **Tmux**: Plugin-based with TPM (Tmux Plugin Manager) auto-installation
- **Helix**: TOML configuration with editor-specific settings

### Development Environment
Homebrew packages are automatically installed via the `brew` tag. Key tools include:
- Modern CLI tools: `rg`, `fd`, `fzf`, `zoxide`, `starship`
- Development: `go`, `terraform`, `ansible`, `helix`, `lazygit`
- System utilities: `tmux`, `vim`, `yazi`, `mise`

## Integration Points

- **Zsh performance monitoring**: Startup timing logged to terminal
- **Secrets management**: `~/.zshrc.secrets` for gitignored environment variables
- **Cross-tool consistency**: Shared color schemes and keybindings where applicable
- **Plugin auto-installation**: Both tmux (TPM) and vim (minpac) handle their own plugin setup

## Common Modifications

When adding new configurations:
1. Add config files to appropriate `dotfiles/` subdirectory
2. Add symlink tasks to `provision/install.yml` with appropriate tags
3. Add homebrew packages to the `brew` task in `provision/install.yml` if needed