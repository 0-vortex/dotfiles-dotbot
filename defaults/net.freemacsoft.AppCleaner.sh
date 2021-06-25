#!/usr/bin/env bash

defaults write net.freemacsoft.AppCleaner ProtectDefaultApps -bool false
defaults write net.freemacsoft.AppCleaner ProtectOpenedApps -bool true
defaults write net.freemacsoft.AppCleaner SUEnableAutomaticChecks -bool true

