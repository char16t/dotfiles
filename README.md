My portable configuration & environment.

### Getting started

```sh
cd ~
git clone https://github.com/char16t/dotfiles
cd dotfiles
sudo make enviromnent-setup
make dotfiles-setup
```

### Requirements

I use [Ubuntu 18.04 (for desktops)](https://ubuntu.com/desktop)

```sh
$ uname -a
Linux laptop 4.15.0-60-generic #67-Ubuntu SMP Thu Aug 22 16:55:30 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux
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
sudo make software-setup
```

### Previous versions

My old Ubuntu 16.10 environment configuration avialable on
[`ubuntu`](https://github.com/char16t/dotfiles/tree/ubuntu) branch.
