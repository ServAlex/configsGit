#!/bin/bash

# TODO: add checks if this folder is situated in home directory
#	if not - copy

mkdir backups

#	vimrc
mv ~/.vimrc ~/configsGit/backups/old_.vimrc.old  	#	preserve old config
ln -s ~/configsGit/.vimrc ~/.vimrc 		#	link to a clonned one

#	gvimrc
mv ~/.gvimrc ~/configsGit/backups/old_.gvimrc.old  	#	preserve old config
ln -s ~/configsGit/.gvimrc ~/.gvimrc 		#	link to a clonned one

#	vim
mv ~/.vim ~/configsGit/backups/old_.vim.old  
ln -s ~/configsGit/.vim ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim		# clone vundle
vim +BundleInstall +qall!					# setup vundle

#	bashrc
mv ~/.bashrc ~/configsGit/backups/old_.bashrc.old  
ln -s ~/configsGit/.bashrc ~/.bashrc

#	tmux.conf	
mv ~/.tmux.conf ~/configsGit/backups/old_.tmux.conf.old  
ln -s ~/configsGit/.tmux.conf ~/.tmux.conf

#	mpv
mv ~/.config/mpv ~/configsGit/backups/mpv.old
ln -s ~/configsGit/mpv/ ~/.config/mpv
#ln -s ~/configsGit/mpv/mpv.conf ~/.config/mpv/mpv.conf

#	Templates
mv ~/Templates ~/configsGit/backups/old_.Templates.old  
ln -s ~/configsGit/Templates ~/Templates

#	nautilus scripts
mv ~/.local/share/nautilus/scripts ~/configsGit/backups/old_.scripts.old  
ln -s ~/configsGit/scripts ~/.local/share/nautilus/scripts
