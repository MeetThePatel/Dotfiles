## Finder Settings

# Always show filetypes
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Always search current folder
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Show path bar and status bar
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder ShowPathbar -bool true

# Devices for the sidebar
defaults write com.apple.sidebarlists systemitems -dict-add ShowServers -int 1
defaults write com.apple.sidebarlists systemitems -dict-add ShowRemovable -int 1
defaults write com.apple.sidebarlists systemitems -dict-add ShowHardDisks -int 1
defaults write com.apple.sidebarlists systemitems -dict-add ShowEjectables -int 1

# Items to display on the desktop
defaults write com.apple.finder ShowHardDrivesOnDesktop -int 1
defaults write com.apple.finder ShowMountedServersOnDesktop -int 1
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -int 1
defaults write com.apple.finder ShowRemovableMediaOnDesktop -int 1

# Open home in new window
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "'file://$HOME/"

# List view in by default
# Possible: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# Show the ~/Library folder
chflags nohidden ~/Library

# Restart Finder to see the changes
killall Finder



## Dock Settings

# Dock: Make it popup faster
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -int 1



## General UI Settings

# Scroll bars
# Possible: "WhenScrolling", "Automatic" and "Always"
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# Keyboard key repeat
defaults write -g InitialKeyRepeat -int 20
defaults write -g KeyRepeat -int 2

# Auto capitalize off
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Different spaces for different displays
defaults write com.apple.spaces spans-displays -int 0
# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -int 0
