#!/bin/zsh

echo "Script starting..."


defaults write com.apple.dock autohide-time-modifier -float 0; 
defaults write com.apple.dock autohide-delay -float 0.2; 
defaults write com.apple.dock persistent-apps -array;
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder ShowPathbar -bool true
defaults write .GlobalPreferences com.apple.mouse.scaling -float 3.0
defaults write -g com.apple.scrollwheel.scaling -float 3.0
defaults write com.apple.dock orientation -string left;
defaults write com.apple.dock autohide -bool true;
defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/System/Applications/Launchpad.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'; killall Dock
killall Dock

# Configure system settings
echo "Configuring system settings..."
defaults write -g com.apple.mouse.scaling 3.0
defaults write -g KeyRepeat -int 2
defaults write -g InitialKeyRepeat -int 15

#Install Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# brew install --cask [theappname]
brew install --cask google-chrome
brew install --cask visual-studio-code
brew install python
pip3 install requests
pip3 --version



