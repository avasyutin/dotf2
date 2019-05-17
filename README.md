# Dotf2

## Plugins

After vim was installed run it and execute:

1. :PackUpdate (and restart vim).

## Pass variables to the playbook from command line

``` shell
$ ansible-playbook -i provision/inventory.ini provision/playbook.yml --extra-vars='user_name=John Doe user_email=john.doe@gmail.com'
```
