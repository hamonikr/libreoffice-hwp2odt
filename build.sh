#!/bin/bash

# remove file
rm -r usr

# make variable & directory
HWP2ODT_DIR=debian/Hwp2Odt.oxt
BUILD_DIR=usr/lib/libreoffice/share/extensions/Hwp2Odt
mkdir -p $BUILD_DIR

# extract Hwp2Odt.oxt
unzip -q -d "$BUILD_DIR" "$HWP2ODT_DIR"