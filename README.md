## ENCRYPTED FILESYSTEM [GOCRYPTFS](https://nuetzlich.net/gocryptfs/) GUI WRAPPER
[![AUR](https://img.shields.io/aur/version/gocryptfs-ui)](https://aur.archlinux.org/packages/gocryptfs-ui/)

[Gocryptfs-ui](https://github.com/bulletmark/gocryptfs-ui) is a bash
script which provides a simple GUI around the
[gocryptfs](https://nuetzlich.net/gocryptfs/) command line utility to
mount and unmount an encrypted directory. This script requires
[gocryptfs](https://nuetzlich.net/gocryptfs/),
[zenity](https://wiki.gnome.org/Projects/Zenity), and
[xdg-open](https://linux.die.net/man/1/xdg-open).

Whenever you want to mount your private directory, you click on the
desktop launcher. The launcher runs the script with appropriate
directory arguments. The script uses
[zenity](https://wiki.gnome.org/Projects/Zenity) to prompt you for the
password and then mounts the
[gocryptfs](https://nuetzlich.net/gocryptfs/) directory. If you click on
the launcher when the private directory is already mounted, then you are
prompted to unmount it. There are some other options, see the usage below.

My motivation for creating this utility is to provide:

1. One mouse click and password entry to access and open a single
   encrypted personal directory.
2. One mouse click to close the directory.
3. No background application running.
4. No password cached anywhere.

See example screenshots on the [wiki](https://github.com/bulletmark/gocryptfs-ui/wiki).

The latest version and documentation is available at
http://github.com/bulletmark/gocryptfs-ui.

_NOTE: This project supercedes my older
[encfsui](https://github.com/bulletmark/encfsui) project_.

### INSTALLATION

NOTE: Arch users can just install [_gocryptfs-ui from the
AUR_](https://aur.archlinux.org/packages/gocryptfs-ui/) and skip to the
next section. Other users can install by running:

    # Install gocryptfs zenity xdg-utils
    git clone http://github.com/bulletmark/gocryptfs-ui
    cd gocryptfs-ui
    sudo make install (or sudo ./gocryptfs-ui-setup install)

### USAGE

The installation procedure creates a desktop application _gocryptfs-ui_
which you can run from your DE. By default, _gocryptfs-ui_ mounts your
encrypted `~/.Private` dir to unencrypted `~/Private` with an
in-activity timeout of 60 minutes. So you should first create an
[gocryptfs](https://nuetzlich.net/gocryptfs/) `~/.Private` directory, or
create a link to there from where you keep your encrypted directory.
See [`man
gocryptfs`](https://github.com/rfjakob/gocryptfs/blob/master/Documentation/MANPAGE.md)
for details on how to create a new encrypted directory.

You can also copy the `/usr/share/applications/gocryptfs-ui.desktop`
launcher to your own Desktop Launcher in `~/.local/share/applications/`
to use different source or target directory names, or to change the
timeout, etc.

The utility can also be run from the command line. The usage is:

    gocryptfs-ui [-options] source_enc_dir target_mount_dir

    GUI utility to mount source_enc_dir to target_mount_dir.
    If target already mounted then it will be unmounted instead.

    Options:
    -i <mins> specify idle timeout mins
    -o (don't open target dir in file browser)

### UPGRADE

    cd gocryptfs-ui  # Source dir, as above
    git pull
    sudo make install (or sudo ./gocryptfs-ui-setup install)

### LICENSE

Copyright (C) 2021 Mark Blakeney. This program is distributed under the
terms of the GNU General Public License.

This program is free software: you can redistribute it and/or modify it
under the terms of the GNU General Public License as published by the
Free Software Foundation, either version 3 of the License, or any later
version.

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
Public License at <http://www.gnu.org/licenses/> for more details.

<!-- vim: se ai syn=markdown: -->
