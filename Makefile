.PHONY: help
help:
	@echo "Portable configuration & environment"
	@echo "make enviromnent-setup    Install requirements"
	@echo "make dotfiles-setup       Link dotfiles at home dir with this files"
	@echo "make software-setup       Install & configure software"

.PHONY: environment-setup
environment-setup:
	./setup/environment-setup.sh

.PHONY: dotfiles-setup
dotfiles-setup:
	./setup/dotfiles-setup.sh

.PHONY: software-setup
dotfiles-setup:
	ansible-playbook -i setup/local setup/playbook.yml
