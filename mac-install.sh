#!/bin/zsh

echo "Script starting..."


defaults write com.apple.dock autohide-time-modifier -float 0.4; 
defaults write com.apple.dock persistent-apps -array;
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder ShowPathbar -bool true
defaults write .GlobalPreferences com.apple.mouse.scaling -float 3.0
defaults write -g com.apple.scrollwheel.scaling -float 3.0
killall Dock

# Configure system settings
echo "Configuring system settings..."
defaults write -g com.apple.mouse.scaling 3.0
defaults write -g KeyRepeat -int 2
defaults write -g InitialKeyRepeat -int 15

