#!/bin/bash

# See https://sipb.mit.edu/doc/safe-shell/
set -euf -o pipefail

grep -F '.aliases' ~/.bashrc || \
	echo '. ~/.aliases' >> ~/.bashrc

grep -F '.bashrc.my' ~/.bashrc || \
	echo '. ~/.bashrc.my' >> ~/.bashrc

grep -F '~/.bashrc' ~/.bash_profile || \
	echo '. ~/.bashrc' >> ~/.bash_profile

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -v -s "$DIR"/{.gitconfig,.gitignore,.vimrc,.aliases,.bashrc.my,vimp,.mplayer,.screenrc,.irbrc,.ctags,.my.cnf,.msmtprc,.mailrc} ~/

crontab < .crontab

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install --with-pcre git;

brew tap homebrew/dupes
brew tap homebrew/versions
brew install node rlwrap curl wget htop unrar watch vim imagemagick rsync gifsicle asciinema ffmpeg pgrep axel mtr app-engine-go-64 tmate tree jsonpp jq ctags Caskroom/cask/keycastr moreutils
brew install coreutils grep gnu-sed findutils --with-default-names
brew install fd ag fzf && /usr/local/opt/fzf/install

brew install bash bash-completion
sudo sh -c 'echo /usr/local/bin/bash >> /etc/shells'
chsh -s /usr/local/bin/bash

# for the `www` alias
brew install nginx
git clone git@github.com:suzanshakya/nginx-server.git ~/src/nginx-server

# for the `wwws` alias
go get github.com/GoogleChrome/simplehttp2server

npm install -g elm-format
