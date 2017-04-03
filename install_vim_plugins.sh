#/bin/bash
set -e

# get pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# nerdtree
mkdir -p ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

# syntastic
cd ~/.vim/bundle && \
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git

# syntastic-python
sudo pip3 install flake8

# syntastic-shellcheck
sudo apt-get install shellcheck

# neocomplete
git clone https://github.com/Shougo/neocomplete.vim.git ~/.vim/neocomplete
