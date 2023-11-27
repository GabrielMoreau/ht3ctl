# NAME

ht3ctl - HyperThreading Core CPU Control

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

`ht3ctl` is a simple script to change mono/hyper-threading mode without rebooting the machine.
It can also enable or disable BIOS `boost` mode.

# AUTHOR

Written by Gabriel Moreau <Gabriel.Moreau@univ-grenoble-alpes.fr>, Grenoble - France

# COPYRIGHT

Copyright (C) 2016-2023, LEGI UMR 5519 / CNRS UGA G-INP, Grenoble, France

Licence: CC0 (Creative Commons Zero - https://spdx.org/licenses/CC0-1.0)
