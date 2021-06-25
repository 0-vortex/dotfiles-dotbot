#!/usr/bin/env bash

defaults write com.crystalidea.macsfancontrol Fahrenheit -int 0
defaults write com.crystalidea.macsfancontrol PreciseTemperature -int 1
defaults write com.crystalidea.macsfancontrol ShowEGpuTemp -int 1
defaults write com.crystalidea.macsfancontrol ShowNVMeDrives -int 1
defaults write com.crystalidea.macsfancontrol ShowSmartDrives -int 0
defaults write com.crystalidea.macsfancontrol "UpdateChecker_Auto" -int 1
defaults write com.crystalidea.macsfancontrol menubarIcon -int 2
defaults write com.crystalidea.macsfancontrol menubarTwoLines -int 0
defaults write com.crystalidea.macsfancontrol trayFan -int 0
defaults write com.crystalidea.macsfancontrol traySensor -string "cpucoreavg"
