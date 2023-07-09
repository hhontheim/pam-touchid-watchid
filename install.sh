#!/bin/sh

case "$1" in
    all)
        echo "Installing all..."
        make all
        sudo make install
        sudo make install_pam
        ;;
    touchid)
        echo "Installing touchid..."
        make touchid
        sudo make install_touchid
        sudo make install_pam_touchid
        ;;
    watchid)
        echo "Installing watchid..."
        make watchid
        sudo make install_watchid
        sudo make install_pam_watchid
        ;;
    *)
        echo "Usage: install.sh [all, touchid, watchid]"
        exit 1
        ;;
esac
