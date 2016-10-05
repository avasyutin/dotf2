# Dotf2

## Neovim

After neovim was installed run it and execute:

1. :PlugInstall (and restart Neovim).
2. :UpdateRemotePlugins (and restart Neovim also).

## Pass variables to the playbook from command line

  ansible-playbook -i provision/inventory.ini provision/playbook.yml --extra-vars='user_name=Alex Vasyutin user_email=alex.vasyutin@gmail.com'
