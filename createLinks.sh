#!/bin/bash

# TODO: add checks if this folder is situated in home directory
#	if not - copy

#	vimrc
mv ~/.vimrc ~/configsGit/old_.vimrc.old  	#	preserve old config
ln -s ~/configsGit/.vimrc ~/.vimrc 		#	link to a clonned one

#	gvimrc
mv ~/.gvimrc ~/configsGit/old_.gvimrc.old  	#	preserve old config
ln -s ~/configsGit/.gvimrc ~/.gvimrc 		#	link to a clonned one

#	vim
mv ~/.vim ~/configsGit/old_.vim.old  
ln -s ~/configsGit/.vim ~/.vim

#	bashrc
mv ~/.bashrc ~/configsGit/old_.bashrc.old  
ln -s ~/configsGit/.bashrc ~/.bashrc

#	tmux.conf	
mv ~/.tmux.conf ~/configsGit/old_.tmux.conf.old  
ln -s ~/configsGit/.tmux.conf ~/.tmux.conf

