#!/bin/sh

case "$1" in
    all)
        ./$0 touchid
        ./$0 watchid

        sudo rm -f /usr/local/lib/pam/pam_touchid.so*
        sudo rm -f /usr/local/lib/pam/pam_watchid.so*
        ;;
    touchid)
        echo "Uninstalling touchid..."
        sudo sed -i '' '/^auth.*pam_touchid.so/d' /etc/pam.d/sudo
        sudo sed -i '' '/^auth.*pam_touchid.so/d' /etc/pam.d/su
        ;;
    watchid)
        echo "Uninstalling watchid..."
        sudo sed -i '' '/^auth.*pam_watchid.so/d' /etc/pam.d/sudo
        sudo sed -i '' '/^auth.*pam_watchid.so/d' /etc/pam.d/su
        ;;
    *)
        echo "Usage: install.sh [all, touchid, watchid]"
        exit 1
        ;;
esac
