#!/usr/bin/env bash

###############################################################################
# Setup and tooling                                                           #
###############################################################################

# originally forked from ~/.macos — https://mths.be/macos
# upgraded with ideas from https://github.com/paulirish/dotfiles

# Close any open System Preferences panes
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `bigsur.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Set computer name (as done via System Preferences → Sharing)
sudo scutil --set ComputerName "QiD0"
sudo scutil --set HostName "NARAKU"
sudo scutil --set LocalHostName "NARAKu"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "NaRAKu"

# Disable the sound effects on boot
sudo nvram StartupMute=%01

###############################################################################
# General                                                                     #
###############################################################################
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"
defaults write NSGlobalDomain AppleAccentColor -int 4
defaults write NSGlobalDomain AppleHighlightColor -string "0.698039 0.843137 1.000000 Blue"
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2
defaults write NSGlobalDomain AppleReduceDesktopTinting -bool false
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"
defaults write NSGlobalDomain AppleScrollerPagingBehavior -bool true
defaults write NSGlobalDomain AppleWindowTabbingMode -string "fullscreen"
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool true
defaults write com.apple.systempreferences NSCloseAlwaysConfirmsChanges -bool false

###############################################################################
# Dock & Menu Bar + Control Center                                            #
###############################################################################
defaults write com.apple.dock tilesize -int 40
defaults write com.apple.dock largesize -int 40
defaults write com.apple.dock magnification -bool false
defaults write com.apple.dock orientation -string "left"
defaults write com.apple.dock mineffect -string "scale"
defaults write com.apple.dock minimize-to-application -bool true
defaults write com.apple.dock launchanim -bool false
defaults write com.apple.dock autohide -bool false
defaults write com.apple.dock show-process-indicators -bool true
defaults write com.apple.dock show-recents -bool true
defaults write com.apple.controlcenter "NSStatusItem Preferred Position BentoBox" -float 112
defaults write com.apple.controlcenter "NSStatusItem Preferred Position Clock" -float 112
defaults write com.apple.controlcenter "NSStatusItem Visible Battery" -bool true
defaults write com.apple.controlcenter "NSStatusItem Visible BentoBox" -bool true
defaults write com.apple.controlcenter "NSStatusItem Visible Clock" -bool true
defaults write com.apple.controlcenter "NSStatusItem Visible Sound" -bool true
defaults write com.apple.controlcenter "NSStatusItem Visible WiFi" -bool true
### these don't always exist so I tried to give them a default value
#defaults write com.apple.controlcenter "NSStatusItem Visible AccessibilityShortcuts" -bool false
#defaults write com.apple.controlcenter "NSStatusItem Visible AirDrop" -bool false
#defaults write com.apple.controlcenter "NSStatusItem Visible Bluetooth" -bool false
#defaults write com.apple.controlcenter "NSStatusItem Visible Display" -bool false
#defaults write com.apple.controlcenter "NSStatusItem Visible DoNotDisturb" -bool false
#defaults write com.apple.controlcenter "NSStatusItem Visible KeyboardBrightness" -bool false
#defaults write com.apple.controlcenter "NSStatusItem Visible NowPlaying" -bool false
### just so I can delete them
#defaults delete com.apple.controlcenter "NSStatusItem Visible AccessibilityShortcuts"
#defaults delete com.apple.controlcenter "NSStatusItem Visible AirDrop"
#defaults delete com.apple.controlcenter "NSStatusItem Visible Bluetooth"
#defaults delete com.apple.controlcenter "NSStatusItem Visible Display"
#defaults delete com.apple.controlcenter "NSStatusItem Visible DoNotDisturb"
#defaults delete com.apple.controlcenter "NSStatusItem Visible KeyboardBrightness"
#defaults delete com.apple.controlcenter "NSStatusItem Visible NowPlaying"
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.TimeMachine" -bool true
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.airplay" -bool true
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.airport" -bool true
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.battery" -bool true
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.clock" -bool true
killall Dock

###############################################################################
# Spotlight                                                                   #
###############################################################################
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
   '{"enabled" = 0;"name" = "MENU_OTHER";}' \
   '{"enabled" = 1;"name" = "SOURCE";}'
defaults write com.apple.lookup.shared LookupSuggestionsDisabled -bool true
killall mds
mdutil -i on >/dev/null &
mdutil -E >/dev/null &
