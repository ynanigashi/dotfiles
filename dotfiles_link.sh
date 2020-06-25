#!/bin/bash
# .vimフォルダがなかったら作成
if [ ! -d ~/.vim ]; then
    mkdir ~/.vim
fi
# nvimフォルダがなかったら作成
if [ ! -d ~/.config/nvim ]; then
    mkdir -p ~/.config/nvim
fi
# bundlesフォルダを作成
if [ ! -d ~/dotfiles/.vim/bundles ]; then
    mkdir ~/dotfiles/.vim/bundles
fi

# リンクの作成
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.vim/colors ~/.vim
ln -sf ~/dotfiles/.vim/bundles ~/.vim
ln -sf ~/dotfiles/.vim/rc ~/.vim
ln -sf ~/dotfiles/.vimrc ~/.config/nvim/init.vim
ln -sf ~/dotfiles/.vim/colors ~/.config/nvim
ln -sf ~/dotfiles/vscode/setting.json ~/Library/Application\ Support/Code/User/