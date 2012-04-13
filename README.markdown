# Prerequisites #
     brew install node
     curl http://npmjs.org/install.sh | sh
     npm install jshint -g
     
# Installation (for vim newbies) #

1. brew update && brew install macvim && brew linkapps
2. cd ~ && echo "source ~/.vim/vimrc" > .vimrc
3. git clone git://github.com/antond/dotvim ~/.vim
4. git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
5. Launch vim and execute :BundleInstall
6. Exit vim by executing :q!
7. rvm use system # use this line if using rvm
   cd ~/.vim/bundle/Command-T/ruby/command-t
   ruby extconf.rb
   make