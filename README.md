# My MangoWC Rice

This is my setup on my Arch system.

List of required software:
- any linux distribution (like arch for example)
- bash
- mangowc
- dunst
- xfce-polkit
- waybar
- swww
- hyprlock
- wl-clipboard
- kitty
- rofi
- grim
- slurp
- swappy
- wlsunset
- pavucontrol
- paru

Full list of software used by me with this rice:
- neovim with [nvchad config](https://github.com/NvChad/NvChad)
- htop
- brave
- thunar
- ristretto
- parole
- xarchiver
- gimp
- libreoffice
- kew
- lmms
- nwg-look

I also included a few of my scripts, such as:
- nomadfetch: a fetch script, which is very broken on other hardware, support is not guaranteed at all, and distros might lack icons, but it works on my machine, so... if you know a way to fix it, make a pr and i'll merge it
- gparu: a tui frontend for paru made with fzf, allows you to search for packages and installs it
- my rofi scripts:
  - web-menu: from there you can either open just a browser, or open specific commonly used websites
  - wallpaper-menu: allows you to pick a wallpaper and set it with swww, by default the wallpapers have to be in ~/Pictures/Wallpapers/
  - power-menu: a simple power menu that can run hyprlock, exit mango, reboot, or shutdown

Rofi theme, menu, and the power menu are edited versions of [Aditya Shakya (adi1090x)'s Rofi](https://github.com/adi1090x/rofi)

Feel free to use anything from this (or even all of it) for whatever you want, however you want, whenever, and wherever.

Default keybinds: (remember, the keybinds were made with the hungarian keyboard layout in mind, expect issues with a few of them)
- ⊞ Super + ⎋ Escape => Power Menu (lock screen, log out, restart, shutdown)
- ⊞ Super + L => Lockscreen
- ⊞ Super + X/⌫ Backspace => Close window

- ⊞ Super + ⇧ Shift + R => Reload MangoWC config

- ⊞ Super + ↑↓←→ Arrows => Change focused window
- ⊞ Super + S/KP+ => Focus next window
- ⊞ Super + (⇧ Shift + S)/KP- => Focus previous window

- ⊞ Super + ⇧ Shift + ↑↓←→ Arrows => Swap windows

- ⊞ Super + G => Global (will move to active tag)
- ⊞ Super + ⇧ Shift + G => Toggle gaps
- ⊞ Super + F => Floating
- ⊞ Super + ⇧ Shift + F => Maximized
- ⊞ Super + F11 => Faux fullscreen
- ⊞ Super + H => Hidden/minimized
- ⊞ Super + ⇧ Shift + H => Restore hidden/minimized windows
- ⊞ Super + O => Overlay (will be above floating windows)

- ⊞ Super + ↹ Tabulator => Switch tag layout
- ⊞ Super + R => Horizontal tiling master
- ⊞ Super + V => Vertical tiling master 
- ⊞ Super + S => Stack/monocle
- ⊞ Super + N => Horizontal scrolling 
- ⊞ Super + ⎇ Alternate + N => Vertical scrolling 
- ⊞ Super + D => Horizontal deck 
- ⊞ Super + ⎇ Alternate + D => Vertical deck 

- ⊞ Super + N => Change window size in scrolling layout
- ⊞ Super + ⇧ Shift + N => Set window size in scrolling layout to 100%

- ⊞ Super + ⎈ Control + ←→ Left/Right => Switch to tag
- ⊞ Super + ⇧ Shift + ⎈ Control + ←→ Left/Right => Move window to tag
- ⊞ Super + Numbers => Switch to tag X
- ⊞ Super + ⇧ Shift + Numbers => Move window to tag X
- ⊞ Super + ⇧ Shift + ⎇ Alternate + Numbers => Move window to tag X without switching to it

- ⎈ Control + ⎇ Alternate + ↑↓←→ Arrows => Resize tiled master window

- ⇧ Shift + ⎇ Alternate + ↑↓←→ Arrows => Move floating window
- ⊞ Super + ⎇ Alternate + ↑↓←→ Arrows => Resize floating window

- ⎇ Alternate (hold) + ↹ Tabulator => Overview & focus window

- ⎈ Control (left) + ⎈ Control (right) => Switch keyboard layout (HU & RU)

- ⊞ Super + T/↵ Enter => Open terminal (kitty)
- ⊞ Super + W => Web menu (browser [brave] & common websites)
- ⊞ Super + ⇧ Shift + W => Open web browser [brave]
- ⊞ Super + E => File manager (thunar)
- ⊞ Super + ⇧ Shift + E => TUI file manager (yazi)
- ⊞ Super + M => Music player (kew)

- ⎈ Control + ␣ Space => Rofi DRun
- ⊞ Super + 0 => Application Menu
- ⊞ Super + Ö => Utility Menu

- ⊞ Super + B => Toggle bar (waybar)
- ⊞ Super + ⇧ Shift + B => Toggle bar transparency 

- ⊞ Super + P => Wallpaper selector

- ⊞ Super + K => Toggle light filter (wlsunset)

- ⎙ PrintScreen => Take fullscreen screenshot
- ⇧ Shift + ⎙ PrintScreen => Take selection screenshot
