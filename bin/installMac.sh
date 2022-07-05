#!/usr/bin/env bash

# homebrew
#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/cask-versions

# browsers
brew install --cask google-chrome firefox-developer-edition
brew install wget

# display and window management 
# brew install --cask spectacle
# brew install --cask magnet pbcopy
# brew install --cask duet

# osx : dock setting
# "Set Dock to auto-hide and remove the auto-hiding delay? (y/n)"
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0

# osx : disable guest account
defaults write /Library/Preferences/com.apple.AppleFileServer guestAccess -bool NO
defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server AllowGuestAccess -bool NO

# osx : special key access
# "Disabling press-and-hold for special keys in favor of key repeat"
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
# brew install --cask karabiner-elements
# TODO: look into https://gist.github.com/brandonb927/3195465 and related for more tweaks

# https://apple.stackexchange.com/questions/10467/how-to-increase-keyboard-key-repeat-rate-on-os-x
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

# gitutils
brew tap jkassis/tap
brew install gitall

# gags
brew install sl

# markup redlining
brew install --cask skitch
brew install --cask licecap

# music and media
brew install --cask spotify
brew install --cask vlc

# passwords
brew install --cask 1password lastpass
# brew install --cask keeper
# TODO: can we automate 1password setup/config?

# messaging
brew install --cask slack telegram
# TODO: slack - auto add my specific servers?

# languages : java
brew install java

## language : javascript
brew install n
n latest

## language : hammerspoon
brew install hammerspoon

brew install node yarn typescript
yarn global add less
#npm install -g jasmine-core
#npm install -g karma karma-jasmine karma-coverage karma-webpack karma-sourcemap-loader karma-chrome-launcher
#npm install -g webpack

## languages: python
#brew install python@2
#pip2 install virtualenv virtualenvwrapper flake8

## languages: go
brew install golang goreleaser
mkdir -p "$HOME/Code/go"

## languages: clojure
brew install clojure leiningen

# editors : atom
# brew install --cask atom
# TODO: atom package setup...
# ex-mode
# linter
# linter-eslint
# set-syntax
# language-javascript-jsx
# vim-mode-plus

# editors : sublime
brew install --cask sublime-text

# editors : emacs
# brew install --cask emacs

# editors : vim
brew install python3 nvim fzf the_silver_searcher ctags fd
./installVim.sh

# ides : xcode
xcode-select --install
sudo xcodebuild -license accept # agree to xcode license

# ides : vscode
brew install --cask visual-studio-code
mkdir -p ~/Library/Application\ Support/Code/User 
rm ~/Library/Application\ Support/Code/User/settings.json 
rm ~/Library/Application\ Support/Code/User/keybindings.json 
ln -s ~/Home/.vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/Home/.vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
defaults write com.microsoft.VSCode.helper CGFontRenderingFontSmoothingDisabled -bool NO
sudo /usr/sbin/DevToolsSecurity --enable

# build tools
brew install upx

# cloud service providers
#brew install heroku-toolbelt
brew install awscli

# container n vms
brew install --cask docker virtualbox
brew install podman

# k8s 
brew install kubernetes-helm terraform cfssl stern jsonnet

# format utils : yaml json
pip3 install yq
go get github.com/brancz/gojsontoyaml
brew install jq jp jid

# protocol clients : http
brew install httpie
# protocol clients : ws
go get -u github.com/hashrocket/ws
# protocol client : TCP/UDP
brew install netcat
# protocol clients : dns
brew install dig


# file sharing
brew install --cask dropbox google-drive-file-stream
brew install --cask mountain-duck grandperspective disk-inventory-x daisydisk grandperspective ipartition

# fs utils
brew install watch fswatch


# terminal emulators
brew install --cask iterm2
# curl "https://raw.githubusercontent.com/nathanbuchar/atom-one-dark-terminal/master/scheme/iterm/One%20Dark.itermcolors" > ~/Downloads/OneDark.itermcolors

# shell : zsh and oh-my-zsh
brew install zsh fish fisher
echo Make sure you do the followin...
echo sudo su -
echo cat "/usr/local/bin/fish" >> /etc/shells
echo exit
echo chsh -s /usr/local/bin/fish jkassis


# shell : directory environments
brew install direnv

# dbs 
brew install elasticsearch@5.6
brew services start elasticsearch@5.6
brew install cockroach
brew services start cockroach
brew install redis
brew services start redis
# brew install neo4j
# brew install postgresql
# brew install --cask postgres
# brew install --cask pgadmin4
# brew services start postgresql

# source / version control
brew install --cask sourcetree beyond-compare
brew install ydiff bfg tig git-filter-repo sourcetree
brew install svn

# fonts
# These aren't really necessary
#    brew tap sambadevi/powerlevel9k
#    brew install powerlevel9k
# Because these have PowerLine Icons...
# https://github.com/Homebrew/homebrew-cask-fonts 
brew tap caskroom/fonts
brew tap homebrew/cask-fonts
brew install --cask font-source-code-pro font-fira-code-nerd-font font-fira-mono-nerd-font font-hack-nerd-font 
# Apple has disabled Subpixel antialiasing for text in macOS Mojave. Re-enable with
defaults write -g CGFontRenderingFontSmoothingDisabled -bool FALSE
# undo that with
# defaults delete -g CGFontRenderingFontSmoothingDisabled
#


# system resource monitoring
brew install little-snitch iperf htop



# single board computer tools
brew install --cask balenaetcher kekka angry-ip-scanner
brew install balena-cli

echo "Post installation tips:"
echo "- Set fira-code font in iterm2"
echo "- Set itermcolor scheme (file is OneDark.itermcolors)"


# trading software
brew install tradingview

# 3d printing
brew install slic3r openscad

# network tools
brew install nmap
