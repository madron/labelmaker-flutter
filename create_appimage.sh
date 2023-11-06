#!/bin/env sh

set -e

APP_NAME=LabelMaker
APP_DIR=$APP_NAME.AppDir
BUNDLE_DIR=build/linux/x64/release/bundle

# flutter build linux
rm -rf $APP_DIR
mkdir -p $APP_DIR
cp -r $BUNDLE_DIR/* $APP_DIR/
cp appimage/* $APP_DIR/
cp appimage/.desktop $APP_DIR/$APP_NAME.desktop
cp appimage/icon.svg $APP_DIR/$APP_NAME.svg

appimagetool $APP_DIR/ $APP_NAME.AppImage
