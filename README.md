# NAME

ht3ctl - enable or disable hyperthreading and boost on computer

# SYNOPSIS

```bash
ht3ctl ht|nbcore|boost
```

# COMMAND

```bash
ht3ctl ht [on|off]    # reports or enable/disable HyperThreading setting (on/off)
ht3ctl nbcore         # reports number of real core (without HT) and total of active thread
ht3ctl boost [on|off] # reports or enable/disable boost bios support
ht3ctl help
```

`ht3ctl` mean HyperThreading Core CPU Control.
This is a simple script that allows you to change the hyper-threading mode of the cores (enabled or disabled) without rebooting the machine.
It can also enable or disable the global CPU boost mode in the BIOS.

The [online manual](https://legi.gricad-pages.univ-grenoble-alpes.fr/soft/trokata/ht3ctl/) is always uptodate at the last version.

# DOWNLOAD

## Software repository

All code is under free license (See below).
All sources are available on the Grenoble campus forge: https://gricad-gitlab.univ-grenoble-alpes.fr/legi/soft/trokata/ht3ctl

The sources are managed via `git`.
It is very easy to stay synchronized with these sources

```bash
# initial recovery
git clone https://gricad-gitlab.univ-grenoble-alpes.fr/legi/soft/trokata/ht3ctl

# the updates thereafter
git pull
```

## Debian package

Debian is a GNU/Linux distribution.
Debian (and certainly Ubuntu) packages for all arch (Bash script) could be download on: https://legi.gricad-pages.univ-grenoble-alpes.fr/soft/trokata/ht3ctl/download.
You can then install it with

```bash
sudo dpkg -i ht3ctl_*_amd64.deb
```

(just replace * with the version you have donwloaded).


# AUTHOR

Written by Gabriel Moreau <Gabriel.Moreau@univ-grenoble-alpes.fr>, Grenoble - France

# COPYRIGHT

Copyright (C) 2017-2024, LEGI UMR 5519 / CNRS UGA G-INP, Grenoble, France

Licence: CC0 (Creative Commons Zero - https://spdx.org/licenses/CC0-1.0)
