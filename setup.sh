# Install oh my zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Copy .vimrc and .tmux.conf to user directory
cp .vimrc ~/.vimrc
cp .tmux.conf ~/.tmux.conf
cp .bash_profile ~/.bash_profile

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install vim runtime
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# Set up colour molokai
git clone https://github.com/tomasr/molokai.git
mv molokai/colors ~/.vim
rm -rf molokai
