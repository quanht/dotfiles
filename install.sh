sudo apt-get install git vim zsh curl cmake

# hosts
git clone https://github.com/quanht/hosts ~/github/hosts
sudo chmod 666 /etc/hosts
cat ~/github/hosts/hosts >> /etc/hosts
sudo chmod 644 /etc/hosts

# oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.profile
echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"' >> ~/.profile
source ~/.profile

# nodejs and npm
nvm install node

# cnpm
npm i -g cnpm --registry=https://registry.npm.taobao.org

# .vimrc, .eslintrc.json, .tern-project
git clone https://github.com/quanht/dotfiles ~/github/dotfiles
ln -s ~/github/dotfiles/.vimrc ~/.vimrc
ln -s ~/github/dotfiles/.eslintrc.json ~/.eslintrc.json
ln -s ~/github/dotfiles/.tern-project ~/.tern-project

# Vundle and vim plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# then open vim, :PluginInstall

# eslint, csslint, and eslint-plugin-react
cnpm i -g eslint csslint eslint-plugin-react

# tidy-html5
git clone https://github.com/htacg/tidy-html5 ~/github/tidy-html5
cd ~/github/tidy-html5/build/cmake
cmake ../.. -DCMAKE_BUILD_TYPE=Release
make
sudo make install
cd ~
