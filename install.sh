#!/usr/bin/zsh

cd $HOME
git clone https://github.com/creationix/nvm .nvm
cd .nvm/
source ~/.nvm/nvm.sh
echo nvm use default >> ~/.zshrc
echo npm_dir=${NVM_PATH}_modules >> ~/.zshrc
echo export NODE_PATH=$npm_dir >> ~/.zshrc
export NODE_PATH=${NVM_PATH}_modules
nvm install v0.10.24
npm install -g grunt-cli
