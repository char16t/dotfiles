.PHONY: all
all:
	ansible-playbook -i local playbook.yml
	cd ~/.nixpkgs && nix-env -i all
