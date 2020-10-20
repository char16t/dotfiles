My portable configuration & environment.

### Getting started

```sh
cd ~
git clone https://github.com/char16t/dotfiles
cd dotfiles
sudo make enviromnent-setup
make dotfiles-setup
sudo make software-setup
```

### Requirements

I use [Ubuntu 20.04 (for desktops)](https://ubuntu.com/desktop)

```sh
$ uname -a
Linux laptop 5.4.0-51-generic #56-Ubuntu SMP Mon Oct 5 14:28:49 UTC 2020 x86_64 x86_64 x86_64 GNU/Linux
```

[Ansible](https://www.ansible.com/) is required. Install using command below:

```bash
sudo make enviromnent-setup
```

### Dotfiles setup

```bash
make dotfiles-setup
```

### Install & configure software

```bash
sudo -H make software-setup
```

### Previous versions

My old Ubuntu 16.10 environment configuration available on
[`ubuntu-16.10`](https://github.com/char16t/dotfiles/tree/ubuntu-16.10) branch.
