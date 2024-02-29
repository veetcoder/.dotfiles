# Dock preferences

# Set the Dock orientation to bottom
defaults write com.apple.dock "orientation" -string "bottom"

# Set the Dock tile size to 48 pixels
defaults write com.apple.dock "tilesize" -int "48"

# Enable auto-hide for the Dock
defaults write com.apple.dock "autohide" -bool "true"

# Set auto-hide delay to 0 seconds
defaults write com.apple.dock "autohide-delay" -float "0"

# Disable recent applications in Dock
defaults write com.apple.dock "show-recents" -bool "false"

# Set minimize effect to genie
defaults write com.apple.dock "mineffect" -string "genie"

# Set Dock to only show static applications
defaults write com.apple.dock "static-only" -bool "true"

# Disable scroll-to-open for Dock icons
defaults write com.apple.dock "scroll-to-open" -bool "false"

# Screenshots preferences

# Set the default location for screenshots to "~/Pictures"
defaults write com.apple.screencapture "location" -string "~/Pictures"

# Show thumbnail of the screenshot
defaults write com.apple.screencapture "show-thumbnail" -bool "true"

# Set screenshot type to PNG
defaults write com.apple.screencapture "type" -string "png"

# Enable drop shadow for screenshots
defaults write com.apple.screencapture "disable-shadow" -bool "false"

# Include date in screenshot filenames
defaults write com.apple.screencapture "include-date" -bool "true"

# Finder preferences

# Enable Quit option in Finder menu
defaults write com.apple.finder "QuitMenuItem" -bool "true"

# Show all file extensions
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "false"

# Show hidden files in Finder
defaults write com.apple.finder "AppleShowAllFiles" -bool "true"

# Show path bar in Finder windows
defaults write com.apple.finder "ShowPathbar" -bool "true"

# Set default view style to column view
defaults write com.apple.finder "FXPreferredViewStyle" -string "clmv"

# Sort folders first in Finder
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true"

# Set default search scope to current folder
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf"

# Remove items from Trash after 30 days
defaults write com.apple.finder "FXRemoveOldTrashItems" -bool "true"

# Disable warning when changing a file extension
defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "false"

# Disable saving new documents to iCloud by default
defaults write NSGlobalDomain "NSDocumentSaveNewDocumentsToCloud" -bool "false"

# Show window title bar icons
defaults write com.apple.universalaccess "showWindowTitlebarIcons" -bool "true"

# Desktop preferences

# Hide external hard drives from the desktop
defaults write com.apple.finder "ShowExternalHardDrivesOnDesktop" -bool "false"

# Disable creation of desktop files for new items
defaults write com.apple.finder "CreateDesktop" -bool "false"

# Mission Control preferences

# Disable most recently used (MRU) spaces in Mission Control
defaults write com.apple.dock "mru-spaces" -bool "false"

# Keyboard preferences

# Disable automatic spelling correction
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

# Enable full keyboard access for all controls
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Enable key repeat at a fast rate
defaults write -g KeyRepeat -int 1
defaults write -g InitialKeyRepeat -int 10

# Disable press-and-hold for keys
defaults write NSGlobalDomain "ApplePressAndHoldEnabled" -bool "false"

# Miscellaneous

# Disable quarantine
defaults write com.apple.LaunchServices "LSQuarantine" -bool "false"

# Set computer name
sudo scutil --set ComputerName "veetcoder-mbp" &&
	sudo scutil --set HostName "veetcoder-mbp" &&
	sudo scutil --set LocalHostName "veetcoder-mbp" &&
	sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "elmouradi-mbp"

# Restart affected applications
killall SystemUIServer
killall Dock
killall Finder
