## About

Before my playbook.yml contain commands for installing all the necessary 
software, but now I started to use Debian 9 instead of Ubuntu 16.10 and 
[Nix](http://nixos.org/nix/) package manager instead of Apt. For this reason, 
the software you have to manually install it, and ansible is only used to copy
config files.

I planning automate it installation process later.

## Requirements

  * [Ansible](https://www.ansible.com/)
  * [Neovim](https://neovim.io/)
  * ctags

## Installation

```
make
```

