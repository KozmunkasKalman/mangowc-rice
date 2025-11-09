# My MangoWC Rice

This is my setup on my Arch system.

List of required software:
- any orthodox fhs following linux distribution (in this case arch for example), although with some tweaking can most likely work on any distro
- bash
- xdg-user-dirs
- xdg-desktop-portal
- xdg-desktop-portal-wlr
- gvfs
- mangowc
- dunst
- xfce-polkit
- waybar
- swww
- hyprlock
- wl-clipboard
- kitty
- thunar
- rofi
- grim
- slurp
- swappy
- wlsunset
- pavucontrol
- paru
- fzf

Full list of software used by me with this rice:
- neovim with [nvchad config](https://github.com/NvChad/NvChad)
- htop
- brave
- ristretto
- parole
- xarchiver
- gimp
- onlyoffice
- tauon
- nwg-look

I also included a few of my scripts, such as:
- nomadfetch: a fetch script, which is very broken on other hardware, support is not guaranteed at all, and distros might lack icons, but it works on my machine, so... if you know a way to fix it, make a pr and i'll merge it
- gparu: a tui frontend for paru made with fzf, allows you to search for and install packages, update installed packages, look for and remove any installed packages, and clear the cache
- my rofi scripts:
  - web-menu: from there you can either open just a browser, or open specific commonly used websites
  - wallpaper-menu: allows you to pick a wallpaper and set it with swww, by default the wallpapers have to be in ~/Pictures/Wallpapers/
  - layout-selector: with this you can select mangowc tag layouts with ease
  - power-menu: a simple power menu that can run hyprlock, exit mango, reboot, or shutdown

Rofi menu and power menu themes are edited versions of [Aditya Shakya (adi1090x)'s Rofi](https://github.com/adi1090x/rofi)

TODO:
- desktop icons with pcmanfm
- fix animations for layers
- make a preview video

Feel free to use anything from this (or even all of it) for whatever you want, however you want, whenever, and wherever.

Default keybinds: (remember, the keybinds were made with the hungarian keyboard layout in mind, expect issues with a few of them)
- ⊞ Super + ⎋ Escape => Power Menu (lock screen, log out, restart, shutdown)
- ⊞ Super + L => Lockscreen
- ⊞ Super + X/⌫ Backspace => Close window

- ⊞ Super + ⇧ Shift + R => Reload MangoWC config
- ⊞ Super + F5 => Reload MangoWC config

- ⊞ Super + ↹ Tabulator => Switch tag layout
- ⊞ Super + R => Horizontal tiling master
- ⊞ Super + V => Vertical tiling master
- ⊞ Super + S => Stack/monocle
- ⊞ Super + N => Horizontal scrolling
- ⊞ Super + ⎇ Alternate + N => Vertical scrolling
- ⊞ Super + D => Horizontal deck
- ⊞ Super + ⎇ Alternate + D => Vertical deck
- ⊞ Super + I => Grid

- ⊞ Super + ↑↓←→ Arrows => Change focused window
- ⊞ Super + KP+ => Focus next window
- ⊞ Super + KP- => Focus previous window
- ⊞ Super + ⇧ Shift + ↑↓←→ Arrows => Swap windows
- ⊞ Super + Q => Swap window with master

- ⊞ Super + ⇪ Caps Lock => Global (will move to active tag)
- ⊞ Super + F => Floating
- ⊞ Super + ⇧ Shift + F => Maximized
- ⊞ Super + F11 => Faux fullscreen
- ⊞ Super + H => Hidden/minimized
- ⊞ Super + U => Restore hidden/minimized windows (unhide)
- ⊞ Super + O => Overlay (will be above floating windows)

- ⊞ Super + G => Toggle gaps

- ⊞ Super + ⇱ Home => Increase master window count
- ⊞ Super + ⇲ End => Decrease master window count

- ⊞ Super + ⎈ Control + N => Change window size in scrolling layout
- ⊞ Super + ⇧ Shift + N => Set window size in scrolling layout to 100%

- ⊞ Super + ⎈ Control + ←→ Left/Right => Switch to tag
- ⊞ Super + ⇧ Shift + ⎈ Control + ←→ Left/Right => Move window to tag
- ⊞ Super + Numbers => Switch to tag X
- ⊞ Super + ⇧ Shift + Numbers => Move window to tag X
- ⊞ Super + ⇧ Shift + ⎇ Alternate + Numbers => Move window to tag X without switching to it

- ⎈ Control + ⎇ Alternate + ↑↓←→ Arrows => Change focused monitor
- ⎈ Control + ⇧ Shift + ⎇ Alternate + ↑↓←→ Arrows => Move window to monitor

- ⎈ Control + ⊞ Super + ⎇ Alternate + ↑↓←→ Arrows => Resize window

- ⊞ Super + ⇧ Shift + ⎇ Alternate + ↑↓←→ Arrows => Move floating window

- ⎇ Alternate (hold) + ↹ Tabulator => Overview & focus window

- ⊞ Super + A => Switch keyboard layout (HU & RU) (⎈ Left Control + ⎈ Right Control is broken for some reason)

- ⊞ Super + T/↵ Enter => Open terminal (kitty)
- ⊞ Super + W => Web menu (browser [brave] & common websites)
- ⊞ Super + ⇧ Shift + W => Open web browser (brave)
- ⊞ Super + E => File manager (thunar)
- ⊞ Super + ⇧ Shift + E => TUI file manager (yazi)
- ⊞ Super + M => Music player (tauon)

- ⎈ Control + ␣ Space => Rofi DRun
- ⊞ Super + 0 => Application Menu
- ⊞ Super + Ö => Utility Menu

- ⊞ Super + B => Toggle bar (waybar)
- ⊞ Super + ⇧ Shift + B => Toggle bar transparency 

- ⊞ Super + P => Wallpaper selector

- ⊞ Super + K => Toggle light filter (wlsunset)

- ⎙ PrintScreen => Take fullscreen screenshot
- ⇧ Shift + ⎙ PrintScreen => Take selection screenshot

- ⊞ Super + 🐁 Left Mouse Button => Move window
- ⊞ Super + 🐁 Middle Mouse Button => Maximize
- ⊞ Super + 🐁 Right Mouse Button => Resize window
- ⎈ Control + 🐁 Middle Mouse Button => Close window

