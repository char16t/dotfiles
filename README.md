## About

Before my playbook.yml contain commands for installing all the necessary 
software, but now I started to use Debian 9 instead of Ubuntu 16.10 and 
[Nix package manager](http://nixos.org/nix/) instead of 
[Apt](https://wiki.debian.org/Apt). For this reason, software should be 
installed manually, and ansible used only for copying config files.

I planning automate installation process later.

## Requirements

  * [Ansible](https://www.ansible.com/)
  * [Neovim](https://neovim.io/)
  * ctags

## Installation

```
make
```

