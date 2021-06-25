#!/usr/bin/env bash

defaults write org.m0k.transmission BindPort -int "62$((1 + $RANDOM % 1000))"
defaults write org.m0k.transmission DownloadLocationConstant -bool true
defaults write org.m0k.transmission InfoVisible -bool false
defaults write org.m0k.transmission InspectorSelected -string "Info"
defaults write org.m0k.transmission NSNavLastRootDirectory -string "~/Downloads"
defaults write org.m0k.transmission RandomPort -bool true
defaults write org.m0k.transmission WarningLegal -bool false
