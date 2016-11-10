## Description

Start a KDE session with the bspwm tiling window manager.

## Configuration

### Autostarting Applications

Applications may be enabled for autostart with KDE system settings or
with bspwm's configuration file. A standalone composite manager is
recommended for transparency, shadows, and other desktop effects.

### Keybindings

Keybindings may be mapped within KDE system settings or with an external
hotkey daemon, like sxhkd or xbindkeys.

### Window Manager Settings

Please refer to [bspwm's repository on Github](https://github.com/baskerville/bspwm)
for window manager configuration instructions, documentation, and
examples. Please read bspwm's `README` before running the session for
the first time since the window manager is nearly unusable without
a proper configuration of keybindings.

## Installation

### Dependencies

* bspwm
* plasma-workspace (for startkde)

### Make

Run `sudo make install` to install to default locations. See the
`Makefile` for details of prefix overrides. The session script and
desktop file will contain absolute paths to executables.

## See Also

* [ArchWiki's article on bspwm](https://wiki.archlinux.org/index.php/Bspwm)
* [ArchWiki's suggestions for running Xorg](https://wiki.archlinux.org/index.php/Xorg#Running)
* [compton composite manager](https://github.com/chjj/compton)
* [sxhkd hotkey daemon](https://github.com/baskerville/sxhkd)

