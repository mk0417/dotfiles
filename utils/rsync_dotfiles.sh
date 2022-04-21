#!/bin/bash

# create dotfiles directory
dot_dir=~/Git/dotfiles
if [ -d $dot_dir ]; then
    printf "\n$dot_dir already exists ...\n"
    printf "No need to create dotfiles directory\n\n"
else
    printf "$dot_dir does not exist ...\n"
    mkdir -p $dot_dir
    printf "dotfiles directory is created\n\n"

    cd $dot_dir
    git init
    printf '\n'

    touch .gitignore
    touch LICENSE.md
    touch README.md

    echo ".DS_Store" > $dot_dir/.gitignore
fi


#--------- .zshrc
rsync -av ~/.zshrc $dot_dir


#--------- tmux
rsync -av ~/.tmux.conf.local $dot_dir


# --------- .emacs.d
emacs_dir=$dot_dir/.emacs.d
if [ -d $emacs_dir ]; then
    printf "\n$emacs_dir already exists ...\n"
    printf "No need to create .emacs.d\n\n"
else
    printf "$emacs_dir does not exist ...\n"
    printf ".emacs.d is created\n\n"
    mkdir -p $emacs_dir
fi

emacs_src_dir=~/.emacs.d
src_emacs="$emacs_src_dir/early-init.el
$emacs_src_dir/init.el
$emacs_src_dir/LICENSE.md
$emacs_src_dir/README.md
$emacs_src_dir/lisp"

for src in $src_emacs;
do
    rsync -av $src $emacs_dir
done


#--------- neovim config
rsync -av --exclude={'plugin','.git','.gitignore'} ~/.config/nvim $dot_dir


#--------- alacritty
rsync -av ~/.config/alacritty $dot_dir


#--------- karabiner
rsync -av --exclude={'assets','automatic_backups'} ~/.config/karabiner $dot_dir


#--------- starship
rsync -av ~/.config/starship.toml $dot_dir


#--------- my utility bash tool
rsync -av ~/Dropbox/utils $dot_dir
