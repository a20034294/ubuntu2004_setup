# need sudo su
apt update
apt upgrade
apt install -y vim
wget https://raw.githubusercontent.com/a20034294/vim/master/.vimrc > .vimrc
apt install -y git
apt install -y tmux
echo "set -g mouse on" > .tmux.conf
tmux source-file .tmux.conf
apt install -y mosh
apt install -y gcc
apt install -y g++
apt install -y python3-pip
apt install -y python-pip
apt install -y htop
apt install -y zsh
apt install -y powerline fonts-powerline
chsh -s /bin/zsh
