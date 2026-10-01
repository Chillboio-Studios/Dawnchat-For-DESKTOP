#!/bin/sh

set -eu

echo "Extracting Artifact..."
echo "---------------------------------------------------------------"

mkdir -p ./AppDir/bin
tar -xvzf /tmp/dawnchat/DawnChat.tar.gz -C ./AppDir/bin

echo "Packaging as version $BUILD_VERSION"
echo "$BUILD_VERSION" > ~/version