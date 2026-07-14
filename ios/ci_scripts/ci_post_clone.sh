#!/bin/sh

# Fail this script if any subcommand fails.
set -e

# The default execution directory of this script is the ci_scripts directory.
cd $CI_PRIMARY_REPOSITORY_PATH # change working directory to the root of your cloned repo.

# Install Flutter using git.
git clone https://github.com/flutter/flutter.git --depth 1 -b 3.32.8 $HOME/flutter
export PATH="$PATH:$HOME/flutter/bin"

# Install Flutter artifacts for iOS (--ios), or macOS (--macos) platforms.
flutter precache --ios

# Install Flutter dependencies.
flutter pub get

# Hardcode version in Info.plist for Xcode Cloud App Store Connect Validation
VERSION=$(grep '^version: ' pubspec.yaml | sed 's/version: //')
VERSION_NAME=$(echo $VERSION | cut -d '+' -f 1)
VERSION_NUMBER=$(echo $VERSION | cut -d '+' -f 2)

echo "Setting version to $VERSION_NAME ($VERSION_NUMBER) in Info.plist"
/usr/libexec/PlistBuddy -c "Set :CFBundleShortVersionString $VERSION_NAME" ios/Runner/Info.plist || /usr/libexec/PlistBuddy -c "Add :CFBundleShortVersionString string $VERSION_NAME" ios/Runner/Info.plist
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $VERSION_NUMBER" ios/Runner/Info.plist || /usr/libexec/PlistBuddy -c "Add :CFBundleVersion string $VERSION_NUMBER" ios/Runner/Info.plist

# Install CocoaPods using Homebrew.
HOMEBREW_NO_AUTO_UPDATE=1 # disable homebrew's automatic updates.
brew install cocoapods

# Install CocoaPods dependencies.
cd ios && pod install # run `pod install` in the `ios` directory.

exit 0
