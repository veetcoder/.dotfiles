# Dock preferences

# Automatically hide the dock
defaults write com.apple.dock "autohide" -bool "true"

# Instantly hide the dock when not hovered
defaults write com.apple.dock "autohide-delay" -float "0"

# Set Dock to only show running applications
defaults write com.apple.dock "static-only" -bool "true"

# Disable scrolling into an app icon in the dock to open it
defaults write com.apple.dock "scroll-to-open" -bool "false"

# Desktop preferences

# Hide files from the desktop
defaults write com.apple.finder "CreateDesktop" -bool "false"

# Mission Control preferences

# Disable most recently used (MRU) spaces in Mission Control
defaults write com.apple.dock "mru-spaces" -bool "false"

# Don't switch to a space with open windows
defaults write NSGlobalDomain "AppleSpacesSwitchOnActivate" -bool "false"

# Keyboard preferences

# Disable automatic spelling correction
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

# Enable full keyboard access for all controls in popups
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

defaults write -g KeyRepeat -int 1.5
defaults write -g InitialKeyRepeat -int 10

# Disable press-and-hold for keys
defaults write NSGlobalDomain "ApplePressAndHoldEnabled" -bool "false"

killall SystemUIServer
killall Dock
killall Finder
