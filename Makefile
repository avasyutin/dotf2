.PHONY: install

# Optional tags parameter (use: make install tags=zsh,vim)
TAGS ?=

install:
	@ANSIBLE_LOCALHOST_WARNING=false ansible-playbook provision/install.yml \
		-i "localhost," \
		$(if $(TAGS),--tags $(TAGS),)
