# Touch ID and Apple Watch Authentication for macOS `sudo` and `su`

This directory contains two subdirectories: `touchid` and `watchid`, each with their own PAM plugins for authentication using biometric information on macOS for `sudo` and `su`.

## 🔨 Installing Both PAM Plugins

> TL;DR: Build and install both plugins with the following commands:
>
> ```sh
> make all
> sudo make install
> sudo make install_pam
> ```

To build both plugins (`touchid` and `watchid`) at once, follow these steps:

1. Run the following command: `$ make all`

   > This command will build the PAM plugins in both subdirectories simultaneously.

2. Run the following command: `$ sudo make install`

   > This command will install the PAM plugins in both subdirectories simultaneously, i.e. copy them to `/usr/local/lib/pam`.

3. Run the following command: `$ sudo make install_pam`

   > This command will add the necessary PAM configuration to `/etc/pam.d/sudo` and `/etc/pam.d/su` to enable the PAM plugins in both subdirectories simultaneously.

## Installing a Single PAM Plugin

To build a single plugin, append the name of the plugin to the `make` commands above.

### Touch ID

```sh
make touchid
sudo make install_touchid
sudo make install_pam_touchid
```

### Apple Watch

```sh
make watchid
sudo make install_watchid
sudo make install_pam_watchid
```

## Uninstalling

To uninstall a plugin, remove the corresponding PAM configuration from `/etc/pam.d/sudo` and `/etc/pam.d/su` (e.g. via `sudo -e /etc/pam.d/su[do]`), and remove the `.so` plugin from `/usr/local/lib/pam`.

## See Also

This repository contains these two PAM plugins for macOS:

### About PAM TouchID

A PAM plugin for authenticating using biometric information (Touch ID) written in Swift.

Based on [Reflejo/pam-touchID](https://github.com/Reflejo/pam-touchID).

### About PAM WatchID

A PAM plugin for authenticating using the new `kLAPolicyDeviceOwnerAuthenticationWithBiometricsOrWatch` API in macOS 10.15, written in Swift.

Based on [biscuitehh/pam-watchid](https://github.com/biscuitehh/pam-watchid).
