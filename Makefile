all: setup_dotfiles

setup_dotfiles:
	sudo apt-get install git
	sudo apt-get install ctags
	ln -s `pwd`/files/vimrc ~/.vimrc
	ln -s `pwd`/files/gitconfig ~/.gitconfig
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim -c "PluginInstall"
