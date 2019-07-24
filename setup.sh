# need sudo su
sed -i 's/archive.ubuntu.com/free.nchc.org.tw/g' /etc/apt/sources.list
apt update
DEBIAN_FRONTEND=noninteractive apt install -y curl
DEBIAN_FRONTEND=noninteractive apt install -y git
DEBIAN_FRONTEND=noninteractive apt install -y vim
git clone https://github.com/gmarik/vundle.git .vim/bundle/vundle
rm .vimrc
wget https://raw.githubusercontent.com/a20034294/vim/master/.vimrc
vim +PlugInstall +qall > /dev/null
DEBIAN_FRONTEND=noninteractive apt install -y tmux
rm .tmux.conf
wget https://raw.githubusercontent.com/a20034294/tmux/master/.tmux.conf
tmux source-file .tmux.conf
DEBIAN_FRONTEND=noninteractive apt install -y mosh
DEBIAN_FRONTEND=noninteractive apt install -y gcc
DEBIAN_FRONTEND=noninteractive apt install -y g++
DEBIAN_FRONTEND=noninteractive apt install -y python3-pip
DEBIAN_FRONTEND=noninteractive apt install -y htop
DEBIAN_FRONTEND=noninteractive apt install -y zsh
DEBIAN_FRONTEND=noninteractive apt install -y powerline
DEBIAN_FRONTEND=noninteractive apt install -y fonts-powerline
chsh -s /bin/zsh
echo "alias ls='ls -alFG'" >> .zshrc
zsh
