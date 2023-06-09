# Sway configuration

This is my daily setup of the Sway. It's a customized version of
[Difrex's](https://github.com/Difrex/sway) config.

![screenshot](screenshots/shot.png)

## Components

- [Waybar](https://github.com/Alexays/Waybar) -- panel
- [mako](https://github.com/emersion/mako) -- notification daemon
- [swayidle](https://github.com/swaywm/swayidle) -- automatically lock screen
- [rofi](https://github.com/davatorium/rofi) -- application launcher and dmenu
  replacement
- [swaylock](https://github.com/swaywm/swaylock) -- lock screen
- [ranger](https://github.com/ranger/ranger) -- file manager

### Installation

```bash
./install.sh
```

## Keybindings

`$mod` is a Super(with windows logo) key.

- Kill focused window: `$mod+q`
- Launch a terminal: `$mod+Return`
- Rofi launcher: run desktop app `$mod+d`, run command `$mod+Shift+d`
  <!-- TODO 👀-->
  <!-- - Copy password with the [pm](https://github.com/himidori/pm): `$mod+p` -->
- Lock screen with the swaylock: `$mod+comma`
- Resize: `$mod+r`
- Make a screenshot(with [grim](https://github.com/emersion/grim) and
  [slurp](https://github.com/emersion/slurp)): `$mod+Shift+c`

For a theme switching you need a [wal](https://github.com/dylanaraps/pywal)

- Switch to light theme: `$mod+Ctrl+Shift+l`
- Switch to dark theme: `$mod+Ctrl+Shift+d`

- Reload config: `$mod+Shift+c`
- Shutdown a session: `$mod+Shift+e`
