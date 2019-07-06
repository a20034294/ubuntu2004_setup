# need sudo su
sed -i 's/archive.ubuntu.com/free.nchc.org.tw/g' /etc/apt/sources.list
apt update
apt install -y vim
rm .vimrc
wget https://raw.githubusercontent.com/a20034294/vim/master/.vimrc
apt install -y curl
apt install -y git
apt install -y tmux
echo "set -g mouse on" > .tmux.conf
tmux source-file .tmux.conf
apt install -y mosh
apt install -y gcc
apt install -y g++
apt install -y python3-pip
pip3 install numpy
pip3 install matplotlib
apt install -y htop
apt install -y zsh
apt install -y powerline
apt install -y fonts-powerline
chsh -s /bin/zsh
echo "alias ls=\"ls -al\" >> .zshrc
zsh
