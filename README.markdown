# Prerequisites #
     brew install node
     curl http://npmjs.org/install.sh | sh
     npm install jshint -g
     brew update && brew install macvim && brew linkapps

# Installation (for vim newbies) #

     1. cd ~ && echo "source ~/.vim/vimrc" > .vimrc
     2. git clone git://github.com/antond/dotvim ~/.vim
     3. git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
     4. Launch vim and execute :BundleInstall
     5. Exit vim by executing :q!
     6. rvm use system # use this line if using rvm
     6a. Maybe you will have to install bundler (gem install bundler) and run `bundle install`
     7. cd ~/.vim/bundle/Command-T/ruby/command-t
     8. ruby extconf.rb
     9. make