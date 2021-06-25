#!/usr/bin/env bash

defaults=(
  "com.crystalidea.macsfancontrol"
  "com.googlecode.iterm2"
  "net.freemacsoft.AppCleaner"
  "org.m0k.transmission"
  "uk.co.opencommunity.vienna2"
)

for i in "${defaults[@]}"
do
  defaults import $i "$i.plist"
done
