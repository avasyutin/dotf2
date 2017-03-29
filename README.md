# Dotf2

## Plugins

After vim was installed run it and execute:

1. :PlugInstall (and restart vim).

## Pass variables to the playbook from command line

``` shell
$ ansible-playbook -i provision/inventory.ini provision/playbook.yml --extra-vars='user_name=Alex Vasyutin user_email=alex.vasyutin@gmail.com'
```
