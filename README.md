# Fedora Wayland Rice — Niri + Noctalia Shell v5

My personal Fedora desktop configuration built around **Niri** and **Noctalia Shell v5**.

> **Note**
>
> This repository contains my personal configuration files. Some paths and settings may need to be adjusted for your own system.

--- 

## Screenshots

### Desktop

<p align="center">
  <img src="screenshots/larp.png" alt="Desktop" width="90%">
</p>

### Main Interface

<p align="center">
  <img src="screenshots/maininterface.png" alt="Main Interface" width="90%">
</p>

### Wallpaper Selector

<p align="center">
  <img src="screenshots/selector.png" alt="Wallpaper Selector" width="90%">
</p>

---

## Features

* **Niri** — Wayland scrolling/tiling compositor
* **Noctalia Shell v5** — Wayland shell, bar and panels
* **Kitty** — terminal emulator
* **Fish** — shell
* **Fastfetch** — system information display
* **Quickshell Wallpaper Picker** — visual wallpaper picker
* **Matugen** — dynamic color generation
* Custom wallpapers
* Custom scripts

---

## Fastfetch Logos

* **Logos availables**
* **Arch Linux**
* **Artix Linux**
* **CachyOS Linux**
* **Debian GNU**
* **EndeavourOS**
* **Fedora**
* **Gentoo Linux**
* **Linux From Scratch**
* **NixOS**
* **Void Linux**
* **Tux**

---

## Structure

```text
fedora-niri-noctalia/
├── fastfetch/
├── fish/
├── kitty/
├── niri/
├── noctalia/
├── qs-wallpaper-picker/
├── screenshots/
├── scripts/
├── wallpapers/
└── README.md
```

---

## Main Dependencies

Packages used in this setup:

```bash
niri
quickshell
noctalia-shell
kitty
fish
fastfetch
swaybg
imagemagick
matugen
```

Additional packages may be required depending on your distribution.

---

## Installation

Clone the repository:

```bash
git clone https://github.com/bento143asf/fedora-niri-noctalia.git
cd fedora-niri-noctalia
```

Copy the configuration files to their respective locations:

```text
~/.config/niri/
~/.config/noctalia/
~/.config/kitty/
~/.config/fish/
~/.config/fastfetch/
~/.local/bin/
~/.local/share/
```

---

## Notes

Some paths are specific to my setup and should be adjusted before use.

Examples include:

* Wallpaper directory
* Avatar image
* Personal scripts
* Local cache paths
* Monitor configuration
* Hardware-specific settings

This configuration was created and tested on **Fedora Linux 44** running **Niri** with **Noctalia Shell v5**.

## Main Keybinds

| Action           | Shortcut  |
| ---------------- | --------- |
| Open terminal    | `Mod + Q` |
| Open launcher    | `Mod + D` |
| Wallpaper picker | `Mod + Y` |
| Close window     | `Mod + C` |

---

## Credits

This repository is my personal configuration. During development, I used several open-source projects as references and inspiration.

Special thanks to:

* **hakuimaku**

  * Inspiration for parts of the Niri configuration and overall layout (some animations too).
  * https://github.com/hakuimaku/hakuspace/tree/main/niri

* **liixini**

  * Shader animations used in this setup.
  * https://github.com/liixini/shaders

Huge thanks to the original authors for making their work available to the community.

---

Maintained by **143**.
