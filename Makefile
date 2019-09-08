.PHONY: all
all:
	ansible-playbook -i setup/local setup/playbook.yml

.PHONY: environment-setup
environment-setup:
	./setup/environment-setup.sh

.PHONY: dotfiles-setup
dotfiles-setup:
	./setup/dotfiles-setup.sh
