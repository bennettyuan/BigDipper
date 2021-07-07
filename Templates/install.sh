#!/usr/bin/env sh

XCODE_TEMPLATE_DIR=$HOME'/Library/Developer/Xcode/Templates/File Templates/BigDipper'
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

install_xcode_templates() {
  if [ -d "$XCODE_TEMPLATE_DIR" ]; then
    rm -R "$XCODE_TEMPLATE_DIR"
  fi
  mkdir -p "$XCODE_TEMPLATE_DIR"

  cp -R $SCRIPT_DIR/*.xctemplate "$XCODE_TEMPLATE_DIR"
}

install_xcode_templates

echo "BigDipper have been set up. In Xcode, select 'New File...' to use BigDipper templates."
