# Config Dock
defaults write com.apple.dock "tilesize" -int "52"
defaults write com.apple.dock "autohide" -bool "true"
defaults write com.apple.dock "autohide-time-modifier" -float "0"
defaults write com.apple.dock "autohide-delay" -float "0"
defaults write com.apple.dock "show-recents" -bool "false"
defaults write com.apple.dock "static-only" -bool "true"
defaults write com.apple.dock "scroll-to-open" -bool "false"
defaults write com.apple.dock "expose-group-apps" -bool "true"
defaults write com.apple.dock "mru-spaces" -bool "false"
defaults write NSGlobalDomain "AppleSpacesSwitchOnActivate" -bool "true"
killall Dock

# Config Screenshots
defaults write com.apple.screencapture "include-date" -bool "true"

# Config Safari
defaults write com.apple.Safari "ShowFullURLInSmartSearchField" -bool "true"
defaults write com.apple.Safari IncludeDevelopMenu 1
killall Safari

# Config Finder
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"
defaults write com.apple.finder "ShowPathbar" -bool "true"
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true"
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf"
defaults write com.apple.finder "FXRemoveOldTrashItems" -bool "false"
defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "false"
defaults write NSGlobalDomain "NSDocumentSaveNewDocumentsToCloud" -bool "false"
defaults write NSGlobalDomain "NSToolbarTitleViewRolloverDelay" -float "0"
defaults write com.apple.finder "_FXSortFoldersFirstOnDesktop" -bool "true"
defaults write com.apple.finder "ShowExternalHardDrivesOnDesktop" -bool "true"
defaults write com.apple.finder "ShowRemovableMediaOnDesktop" -bool "true"
defaults write com.apple.finder "ShowMountedServersOnDesktop" -bool "true"
killall Finder

# Config Mouse and Keyboard
defaults write com.apple.AppleMultitouchTrackpad "FirstClickThreshold" -int "2"
defaults write NSGlobalDomain "ApplePressAndHoldEnabled" -bool "false"
defaults write NSGlobalDomain AppleKeyboardUIMode -int "2"
defaults write kCFPreferencesAnyApplication TSMLanguageIndicatorEnabled -bool "false"

# Config Mission Control
defaults write com.apple.spaces "spans-displays" -bool "false"
killall SystemUIServer

# Config XCode
defaults write com.apple.dt.Xcode "ShowBuildOperationDuration" -bool "true" && killall Xcode

# Config TextEdit
defaults write com.apple.TextEdit "RichText" -bool "false"
defaults write com.apple.TextEdit "SmartQuotes" -bool "false"
killall TextEdit

# Miscellaneous
defaults write com.apple.Music "userWantsPlaybackNotifications" -bool "false" && killall Music
defaults write com.apple.LaunchServices "LSQuarantine" -bool "false"
