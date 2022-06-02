# install base
sudo apt install -y git vim ssh zsh wget curl

# setup vim
mkdir -p ~/.vim/bundle/  
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim  
git clone https://github.com/MihChepi/dotfiles.git ~/dotfiles  
cp ~/dotfiles/.vimrc ~/.  
echo "To finish setup vim tap :PluginInstall in vim"

# setup zsh
cp .zshrc ~/.zshrc
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"  
