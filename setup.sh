# need sudo
cd ~/
sudo sed -E -i 's/http:\/\/.+\/ubuntu/http:\/\/ubuntu.ccns.ncku.edu.tw\/ubuntu/g' /etc/apt/sources.list
sed -E -i 's/http:\/\/.+\/ubuntu/http:\/\/ubuntu.ccns.ncku.edu.tw\/ubuntu/g' /etc/apt/sources.list
sudo apt update
sudo DEBIAN_FRONTEND=noninteractive apt install -y curl
sudo DEBIAN_FRONTEND=noninteractive apt install -y git
sudo DEBIAN_FRONTEND=noninteractive apt install -y vim
git clone https://github.com/gmarik/vundle.git .vim/bundle/vundle
rm .vimrc
wget https://raw.githubusercontent.com/a20034294/vim/master/.vimrc
vim +PluginInstall +qall
git config --global core.editor "vim"
sudo DEBIAN_FRONTEND=noninteractive apt install -y tmux
rm .tmux.conf
wget https://raw.githubusercontent.com/a20034294/tmux/master/.tmux.conf
tmux source-file .tmux.conf
sudo DEBIAN_FRONTEND=noninteractive apt install -y mosh
sudo DEBIAN_FRONTEND=noninteractive apt install -y htop
sudo DEBIAN_FRONTEND=noninteractive apt install -y net-tools
sudo DEBIAN_FRONTEND=noninteractive apt install -y zsh
sudo DEBIAN_FRONTEND=noninteractive apt install -y powerline
sudo DEBIAN_FRONTEND=noninteractive apt install -y fonts-powerline
sudo DEBIAN_FRONTEND=noninteractive apt install -y locales
locale-gen en_US.UTF-8
sudo timedatectl set-timezone 'Asia/Taipei'
sudo dpkg-reconfigure --frontend noninteractive tzdata
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "alias ls='ls -alFv --color=always'" >> .zshrc
echo "alias cls='clear'" >> .zshrc
echo 'export LC_ALL="en_US.UTF-8"' >> .zshrc
sed -i 's/robbyrussell/agnoster/g' .zshrc
sed -i 's/git/git mosh zsh-autosuggestions/g' .zshrc
chsh -s /bin/zsh
source .zshrc
mkdir .ssh
touch .ssh/authorized_keys
zsh

