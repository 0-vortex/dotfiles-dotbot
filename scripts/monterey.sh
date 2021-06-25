#!/usr/bin/env bash

# Administrator settings
sudo nvram SystemAudioVolume=%10
sudo nvram StartupMute=%01
sudo scutil --set ComputerName "QiD0"
sudo scutil --set HostName "NARAKU"
sudo scutil --set LocalHostName "NARAKu"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "NaRAKu"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server ServerDescription -string "QiD0"
sudo systemsetup -settimezone "Africa/Harare" > /dev/null

# Accessibility
defaults write com.apple.Accessibility FullKeyboardAccessFocusRingEnabled -int 1
defaults write com.apple.Accessibility FullKeyboardAccessFocusRingEnabled -float 0.25
defaults write com.apple.Accessibility KeyRepeatInterval -float 0.083333333
defaults write com.apple.Accessibility ReduceMotionEnabled -int 0

# AdLib
defaults write com.apple.AdLib allowApplePersonalizedAdvertising -bool false
defaults write com.apple.AdLib allowIdentifierForAdvertising -bool false

# Clock
defaults write com.apple.menuextra.clock DateFormat -string "EEE d MMM  HH:mm:ss"
defaults write com.apple.menuextra.clock Show24Hour -bool true
defaults write com.apple.menuextra.clock ShowSeconds -bool true

# Spotlight
sudo mdutil -a -i off
defaults write com.apple.spotlight orderedItems -array \
        '{"enabled" = 1;"name" = "APPLICATIONS";}' \
        '{"enabled" = 0;"name" = "MENU_SPOTLIGHT_SUGGESTIONS";}' \
        '{"enabled" = 1;"name" = "MENU_CONVERSION";}' \
        '{"enabled" = 1;"name" = "MENU_EXPRESSION";}' \
        '{"enabled" = 1;"name" = "MENU_DEFINITION";}' \
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
killall mds > /dev/null 2>&1

# General
defaults write -g AppleLanguages -array "en-RO"
defaults write -g AppleLocale -string "en_RO"
defaults write -g AppleMeasurementUnits -string "Centimeters"
defaults write -g AppleTemperatureUnit -string "Celsius"
defaults write -g AppleMetricUnits -bool true
defaults write -g AppleInterfaceStyle -string "Dark"
defaults write -g AppleAccentColor -int 4
defaults write -g AppleAntiAliasingThreshold -int 4
defaults write -g AppleAquaColorVariant -int 1
defaults write -g AppleHighlightColor -string "0.698039 0.843137 1.000000 Blue"
defaults write -g AppleShowScrollBars -string "Automatic"
defaults write -g AppleReduceDesktopTinting -bool true
defaults write -g AppleMiniaturizeOnDoubleClick -bool false
defaults write -g "com.apple.sound.beep.flash" -int 0
defaults write -g "com.apple.springing.delay" -float "0.5"
defaults write -g "com.apple.springing.enabled" -bool true
defaults write -g "com.apple.trackpad.forceClick" -bool true
defaults write -g NSPreferredWebServices -dict-add "NSWebServicesProviderWebSearch" '{
    NSDefaultDisplayName = DuckDuckGo;
    NSProviderIdentifier = "com.duckduckgo";
}'
defaults write -g NSUserDictionaryReplacementItems -array
defaults write -g NSAutomaticCapitalizationEnabled -bool false
defaults write -g NSAutomaticPeriodSubstitutionEnabled -bool false

# Dock
defaults write com.apple.dock autohide -bool false
defaults write com.apple.dock largesize -float 64
defaults write com.apple.dock launchanim -bool false
defaults write com.apple.dock loc -string "en_GB:RO"
defaults write com.apple.dock "minimize-to-application" -bool true
defaults write com.apple.dock orientation -string "left"
defaults write com.apple.dock region -string "RO"
defaults write com.apple.dock tilesize -float 32

# Control Center
defaults write com.apple.controlcenter "NSStatusItem Preferred Position AccessibilityShortcuts" -float 345
defaults write com.apple.controlcenter "NSStatusItem Preferred Position Battery" -float 272
defaults write com.apple.controlcenter "NSStatusItem Preferred Position BentoBox" -float 204
defaults write com.apple.controlcenter "NSStatusItem Preferred Position Bluetooth" -float 309
defaults write com.apple.controlcenter "NSStatusItem Preferred Position KeyboardBrightness" -float 309
defaults write com.apple.controlcenter "NSStatusItem Preferred Position NowPlaying" -float 314
defaults write com.apple.controlcenter "NSStatusItem Preferred Position Sound" -float 344
defaults write com.apple.controlcenter "NSStatusItem Preferred Position WiFi" -float 236
defaults write com.apple.controlcenter "NSStatusItem Visible AccessibilityShortcuts" -bool true
defaults write com.apple.controlcenter "NSStatusItem Visible Battery" -bool true
defaults write com.apple.controlcenter "NSStatusItem Visible BentoBox" -bool true
defaults write com.apple.controlcenter "NSStatusItem Visible Bluetooth" -bool false
defaults write com.apple.controlcenter "NSStatusItem Visible Clock" -bool true
defaults write com.apple.controlcenter "NSStatusItem Visible KeyboardBrightness" -bool false
defaults write com.apple.controlcenter "NSStatusItem Visible NowPlaying" -bool false
defaults write com.apple.controlcenter "NSStatusItem Visible Sound" -bool true
defaults write com.apple.controlcenter "NSStatusItem Visible WiFi" -bool true

# Trackpad
defaults write com.apple.AppleMultitouchTrackpad ActuateDetents -int 1
defaults write com.apple.AppleMultitouchTrackpad Clicking -int 1
defaults write com.apple.AppleMultitouchTrackpad DragLock -int 0
defaults write com.apple.AppleMultitouchTrackpad Dragging -int 0
defaults write com.apple.AppleMultitouchTrackpad FirstClickThreshold -int 0
defaults write com.apple.AppleMultitouchTrackpad ForceSuppressed -bool false
defaults write com.apple.AppleMultitouchTrackpad SecondClickThreshold -int 0
defaults write com.apple.AppleMultitouchTrackpad TrackpadCornerSecondaryClick -int 0
defaults write com.apple.AppleMultitouchTrackpad TrackpadFiveFingerPinchGesture -int 2
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerHorizSwipeGesture -int 2
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerPinchGesture -int 2
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerVertSwipeGesture -int 2
defaults write com.apple.AppleMultitouchTrackpad TrackpadHandResting -bool true
defaults write com.apple.AppleMultitouchTrackpad TrackpadHorizScroll -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadMomentumScroll -bool true
defaults write com.apple.AppleMultitouchTrackpad TrackpadPinch -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadRightClick -bool true
defaults write com.apple.AppleMultitouchTrackpad TrackpadRotate -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadScroll -bool true
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool false
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerHorizSwipeGesture -int 2
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerTapGesture -bool false
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerVertSwipeGesture -int 2
defaults write com.apple.AppleMultitouchTrackpad TrackpadTwoFingerDoubleTapGesture -bool true
defaults write com.apple.AppleMultitouchTrackpad TrackpadTwoFingerFromRightEdgeSwipeGesture -int 3
defaults write com.apple.AppleMultitouchTrackpad USBMouseStopsTrackpad -int 0
defaults write com.apple.AppleMultitouchTrackpad UserPreferences -bool true
defaults write com.apple.AppleMultitouchTrackpad version -int 12

# Activity Monitor
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true
defaults write com.apple.ActivityMonitor IconType -int 6
defaults write com.apple.ActivityMonitor SelectedTab -int 0
defaults write com.apple.ActivityMonitor ShowCategory -int 100

# Calculator
defaults write com.apple.calculator ViewDefaultsKey -string "Scientific"

# Disk Utility
defaults write com.apple.DiskUtility "OperationProgress DetailsVisible" -bool true
defaults write com.apple.DiskUtility SidebarShowAllDevices -bool true

# Finder
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
defaults write com.apple.finder ShowSidebar -bool true
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder SidebarDevicesSectionDisclosedState -bool true
defaults write com.apple.finder SidebarPlacesSectionDisclosedState -bool true
defaults write com.apple.finder SidebarShowingiCloudDesktop -bool true
defaults write com.apple.finder SidebarShowingSignedIntoiCloud -bool true
defaults write com.apple.finder SidebarWidth -float 150
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
killall Finder

# Safari
defaults write com.apple.Safari.SandboxBroker SavePanelFileFormat -int 0
defaults write com.apple.Safari.SandboxBroker ShowDevelopMenu -bool true
#defaults write com.apple.Safari AlwaysRestoreSessionAtLaunch -bool true
#defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
#defaults write com.apple.Safari DownloadsClearingPolicy -int 1
#defaults write com.apple.Safari ExcludePrivateWindowWhenRestoringSessionAtLaunch -bool true
#defaults write com.apple.Safari ExtensionsEnabled -bool true
#defaults write com.apple.Safari IncludeDevelopMenu -bool true
#defaults write com.apple.Safari NewTabBehavior -int 4
#defaults write com.apple.Safari NewWindowBehavior -int 4
#defaults write com.apple.Safari PasswordBreachDetectionOn -bool false
#defaults write com.apple.Safari PreloadTopHit -bool false
#defaults write com.apple.Safari ShowFavoritesBar-v2 -bool false
#defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true
#defaults write com.apple.Safari ShowOverlayStatusBar -bool true
#defaults write com.apple.Safari ShowReadingListInFavorites -bool false
#defaults write com.apple.Safari ShowSidebarInNewWindows -bool false
#defaults write com.apple.Safari ShowSiriSuggestionsPreference -bool false
#defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# System Preferences
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false
defaults write com.apple.systempreferences ShowAllMode -bool true
