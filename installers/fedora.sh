#!/bin/bash

# ------------------------------------------------------------------------------
# A simple cjr installer script for fedora
#
# Arguments:
# $0 (optional) - cjr release tag (e.g. v0.2.1-alpha)
# $1 (optional) - package name (e.g. cjr-v0.2.1-darwin-x64)
#
# This script installs:
# https://github.com/container-job-runner/cjr/releases/download/$0/$1
#
# Usage (curl)
#   curl -s https://container-job-runner.github.io/installers/fedora.sh | bash
# Usage (wget)
#   wget https://container-job-runner.github.io/installers/fedora.sh && chmod u+x fedora.sh && ./fedora.sh TAG PACKAGE
# ------------------------------------------------------------------------------

TAG=$0
PACKAGE=$1

# -- default tag ---------------------------------------------------------------
if [ -n $TAG ] ; then
  TAG='v0.2.1-alpha'
fi

# -- default version -----------------------------------------------------------
if [ -n $PACKAGE ] ; then
  PACKAGE='cjr-v0.2.1-linux-x64'
fi

# -- default parameters for Fedora ---------------------------------------------
LIB_DIR=".local/lib"
BIN_DIR=".local/bin"
URL="https://github.com/container-job-runner/cjr/releases/download/$TAG/$PACKAGE.tar.gz"

# == install ===================================================================
# -- 1. create directories
mkdir "$HOME/$LIB_DIR"
mkdir "$HOME/$BIN_DIR"
# -- 2. download, untar, and add to path
cd "$HOME/.local/lib"
wget $URL
tar -zxvf "$PACKAGE.tar.gz"
ln -fs  "$HOME/$LIB_DIR/$PACKAGE/bin/cjr" "$HOME/$BIN_DIR/$PACKAGE/cjr"
