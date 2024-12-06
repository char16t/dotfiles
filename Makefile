.PHONY: help
help:
	@echo "Portable configuration & environment"
	@echo ""
	@echo "            make dotfiles-setup       Link dotfiles at home dir with this files"
	@echo ""

.PHONY: dotfiles-setup
dotfiles-setup:
	./setup/dotfiles-setup.sh
