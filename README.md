#Dotfiles  
## vimconfig
### Setup this config Linux
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim   
git clone https://github.com/MihChepi/dotfiles.git ~/dotfiles  
cp ~/dotfiles/.vimrc ~/.   

### For windows
into your account folder  
git clone https://github.com/VundleVim/Vundle.vim.git .vim/bundle/Vundle.vim   
git clone https://github.com/MihChepi/dotfiles.git    

move .vimrc to your account folder 
fix vimrc for window (add path vimfiles/plugin and move colorscheme to color)

### In vim 
:PluginInstall

If you use windows, don't forget change .vimrc for windows and move colorscheme 
