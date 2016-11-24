#!/bin/bash
# This script is here to do shiit

source $(dirname $0)/install.sh

EVERM_DIR="$HOME/.everm"
EMACS_DIR="$EVERM_DIR/emacs"
EMACS_SHIM="$EVERM_DIR/shim"
FTP_URL="https://ftp.gnu.org/gnu/emacs"

if [ ! -d "$EVERM_DIR" ]; then
  echo "making directories"

  mkdir -p "$EVERM_DIR"
  mkdir -p "$EMACS_DIR"
  mkdir -p "$EMACS_SHIM"
  
  echo "one time setup completed"
fi

command="$1"

get_list_of_avaiable_emacs() {
  echo "fetching avaiable versions"

  wget -qO- "$FTP_URL/" | egrep -o '(emacs-\d\d\.\d\w?).tar.gz"' | sed 's/.tar.gz"//' > "$EVERM_DIR/.emacs_versions"
}

if [ "$command" == "list" ]; then
  get_list_of_avaiable_emacs
  filename="$EVERM_DIR/.emacs_versions"

  echo "$(<$filename)"

elif [ "$command" == "install" ]; then
  if [ ! -f "$EVERM_DIR/.emacs_versions" ]; then
    get_list_of_avaiable_emacs
  fi

  result=`cat "$EVERM_DIR/.emacs_versions" | egrep -oc "$2"`

  if [ $result -gt 0 ]; then
    get_emacs $2
  fi
fi

exit $?

