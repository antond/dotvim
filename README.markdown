# Prerequisites (OS X) #
     curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.28.0/install.sh | bash
     nvm install stable
     nvm use stable
     npm install npm -g
     npm install jshint -g
     brew install macvim && brew linkapps
     
NOTE: Use https:// instead of git:// when cloning repos if you have commiter privileges

# OS X Installation (for vim newbies) #

     1. cd ~ && echo "source ~/.vim/vimrc" > .vimrc
     2. git clone git://github.com/antond/dotvim ~/.vim
     3. git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
     4. Launch vim from your terminal window by running mvim (ignore railscasts warnings for now) and execute :BundleInstall
     5. Exit vim by executing :q!
     6. rvm use system # use this line if using rvm
     6a. Maybe you will have to install bundler (gem install bundler) and run `bundle install`
     7. cd ~/.vim/bundle/Command-T/ruby/command-t
     8. ruby extconf.rb
     9. make

# Prerequisites (Ubuntu) #
     sudo apt-get install aptitude # because I like it better :D
     sudo aptitude update
     sudo apt-add-repository ppa:chris-lea/node.js
     sudo aptitude install git-core python-software-properties exuberant-ctags ncurses-term curl nodejs npm
     sudo npm install -g jshint
     
# Prerequisites (Arch Linux)
     sudo pacman -S nodejs gvim git
     sudo npm install -g jshint

# Installation on Ubuntu #
     1. cd ~ && echo "source ~/.vim/vimrc" > .vimrc
     1a. cd ~ && echo "source ~/.vim/gvimrc" > .gvimrc # if you are using gvimrc
     2. git clone git://github.com/antond/dotvim ~/.vim
     3. git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
     4. Launch vim (ignore railscasts warnings for now) and execute :BundleInstall
     5. Exit vim by executing :q!
     6. rvm use system # use this line if using rvm
     6a. Maybe you will have to install bundler (gem install bundler) and run `bundle install`
     7. cd ~/.vim/bundle/Command-T/ruby/command-t
     8. ruby extconf.rb
     9. make
     
     # only if you want Monaco font
     10. wget http://jorrel.googlepages.com/Monaco_Linux.ttf
     11. sudo mkdir /usr/share/fonts/truetype/custom
     12. sudo mv Monaco_Linux.ttf /usr/share/fonts/truetype/custom/
     13. sudo fc-cache -f -v
     
# Adding a plugin (example)

     1. Create vim plugin repo on github or fork an existing one. You end up with something like antond/vim-fugitive
     2. Edit ~/.vim/vimrc and add:
          Bundle 'antond/vim-fugitive' # put this after the last Bundle
     3. Launch vim and execute :BundleInstall
