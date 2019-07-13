#!/usr/bin/env sh

# Change Mission Control animations to a cross-fade
defaults write com.apple.universalaccess reduceMotion -bool true

# To disable spell check system-wide
defaults write com.apple.notes NSAutomaticSpellingCorrectionEnabled -bool false

# Keyboard: Make key repeat fast"
defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 1

# Turn Bluetooth off (security)
defaults write /Library/Preferences/com.apple.Bluetooth ControllerPowerState -int 0

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Disable Resume system-wide
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false

# Always show scrollbars
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# Disable smart quotes as they’re annoying when typing code
# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Enable the debug menu in Disk Utility
defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true
defaults write com.apple.DiskUtility advanced-image-options -bool true

# Spotlight
# Load new settings before rebuilding the index
# Make sure indexing is enabled for the main volume
# Rebuild the index from scratch
defaults write com.apple.spotlight orderedItems -array \
   '{"enabled" = 1;"name" = "APPLICATIONS";}' \
   '{"enabled" = 0;"name" = "MENU_SPOTLIGHT_SUGGESTIONS";}' \
   '{"enabled" = 1;"name" = "MENU_CONVERSION";}' \
   '{"enabled" = 1;"name" = "MENU_EXPRESSION";}' \
   '{"enabled" = 0;"name" = "MENU_DEFINITION";}' \
   '{"enabled" = 1;"name" = "SYSTEM_PREFS";}' \
   '{"enabled" = 0;"name" = "DOCUMENTS";}' \
   '{"enabled" = 0;"name" = "DIRECTORIES";}' \
   '{"enabled" = 0;"name" = "PRESENTATIONS";}' \
   '{"enabled" = 0;"name" = "SPREADSHEETS";}' \
   '{"enabled" = 0;"name" = "PDF";}' \
   '{"enabled" = 0;"name" = "MESSAGES";}' \
   '{"enabled" = 0;"name" = "CONTACT";}' \
   '{"enabled" = 0;"name" = "EVENT_TODO";}' \
   '{"enabled" = 0;"name" = "IMAGES";}' \
   '{"enabled" = 0;"name" = "BOOKMARKS";}' \
   '{"enabled" = 0;"name" = "MUSIC";}' \
   '{"enabled" = 0;"name" = "MOVIES";}' \
   '{"enabled" = 0;"name" = "FONTS";}' \
   '{"enabled" = 0;"name" = "MENU_OTHER";}'
killall mds
mdutil -i on >/dev/null &
mdutil -E >/dev/null &

# Hot corners
# Bottom Left - show desktop
# Bottom Right - show application windows
# Top Right - show notification centre
defaults write com.apple.dock wvous-bl-corner -int 4
defaults write com.apple.dock wvous-bl-corner-modifier -int 0
defaults write com.apple.dock wvous-br-corner -int 3
defaults write com.apple.dock wvous-br-corner-modifier -int 0
defaults write com.apple.dock wvous-tr-corner -int 12
defaults write com.apple.dock wvous-tr-corner-modifier -int 0


# Set the icon size of Dock items to 36 pixels
# Change minimize/maximize window effect
# Minimize windows into their application’s icon
# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false
defaults write com.apple.dock minimize-to-application -bool true
defaults write com.apple.dock mineffect -string "scale"
defaults write com.apple.dock tilesize -int 42
defaults write com.apple.dock largesize -int 42
defaults write com.apple.dock orientation -string "left"
killall Dock

# Finder
# Show Hidden Files in Finder
# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
# When performing a search, search the current folder by default
# Disable the warning when changing a file extension
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder AppleShowAllFiles YES
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
killall Finder

# Activity monitor
# Show the main window when launching Activity Monitor
# Visualize CPU usage history in the Activity Monitor Dock icon
# Show all processes tree view in Activity Monitor
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true
defaults write com.apple.ActivityMonitor IconType -int 6
defaults write com.apple.ActivityMonitor ShowCategory -int 101
