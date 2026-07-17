# Fedora Wayland Rice — Niri + Noctalia Shell

My personal Fedora desktop configuration using:

* **Niri** — Wayland scrolling/tiling compositor
* **Noctalia Shell v5** — Wayland shell, bar and panels
* **Kitty** — terminal emulator
* **Fish** — shell
* **Fastfetch** — system information display
* **Rofi** — wallpaper selector
* **Quickshell wallpaper picker** — visual wallpaper picker

## Structure

```text
fedora-niri-noctalia/
├── niri/
│   └── config.kdl
├── noctalia/
│   ├── settings.json
│   ├── settings.toml
│   ├── colors.json
│   └── plugins/
├── kitty/
│   ├── kitty.conf
│   └── current-theme.conf
├── fish/
│   └── config.fish
├── fastfetch/
│   ├── config.jsonc
│   └── png/
├── qs-wallpaper-picker/
└── scripts/
    └── wallselect.sh
```

## Main dependencies

Packages used in this setup:

```bash
niri
quickshell
noctalia-shell
kitty
fish
fastfetch
rofi
swaybg
imagemagick
```

## Installation

Clone the repository:

```bash
git clone https://github.com/bento143asf/fedora-niri-noctalia.git
cd fedora-niri-noctalia
```

Copy the files to their respective locations:

```text
~/.config/niri/
~/.config/noctalia/
~/.config/kitty/
~/.config/fish/
~/.config/fastfetch/
~/.local/bin/
~/.local/share/
```

## Notes

Some paths may need to be adjusted depending on your username and system:

* wallpaper directory
* avatar image
* personal scripts
* local cache paths

This configuration was created for my Fedora setup running Niri and Noctalia Shell v5.

## Wallpaper

The wallpaper selector uses Rofi with ImageMagick-generated thumbnails.

Shortcut:

```text
Mod + Y
```

## Main keybinds

Open terminal:

```text
Mod + Q
```

Open launcher:

```text
Mod + D
```

Select wallpaper:

```text
Mod + Y
```

Close window:

```text
Mod + C
```

---

Maintained by 143.
