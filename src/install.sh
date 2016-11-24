#!/bin/bash
# This script is here to do download and install emacs 

get_emacs() {
  if [ ! -d "$EMACS_DIR/$1" ]; then
    echo "getting your emacs from internet"

    tempfile=`mktemp`
    wget "$FTP_URL/$1.tar.gz" -O $tempfile
    mkdir -p "$EMACS_DIR/$1"
    tar xf $tempfile -C "$EMACS_DIR/$1" 
  else
    echo "emacs version already exists"
  fi
}

install_emacs() {

}
