A personal Linux desktop configuration repo for a clean, minimal, and highly customizable Sway-based setup.

This repository collects my configuration files for the desktop, including:

Sway / SwayFX window manager setup
Waybar status bar styles and layouts
Alacritty terminal themes
Wofi launcher styling
Fastfetch configuration
Shell aliases and small helper scripts

You will need to install the following packages:

swayfx
alacritty
wofi
fastfetch
waybar
nerd font
swayosd
grim
slurp
cliphist

I am sure, that I am missing some packages

Preview



# swayfx-config

A personal Linux desktop configuration repo for a clean, minimal, and highly customizable Sway-based setup.

This repository collects my configuration files for the desktop, including:

* **Sway / SwayFX** window manager setup
* **Waybar** status bar styles and layouts
* **Alacritty** terminal themes
* **Wofi** launcher styling
* **Fastfetch** configuration
* Shell aliases and small helper scripts

---

## Preview

Add screenshots of your desktop here so people can see the theme, bar, launcher, and terminal at a glance.

![Desktop overview](Pictures/desktop-overview.png)
![Waybar and wallpaper](Pictures/waybar-overview.png)
![Wofi launcher](Pictures/wofi-preview.png)

If you do not have these files yet, create them first and replace the paths above with the real image filenames in the repository.

---

## What is included

### `sway/`

Main Sway configuration files.

* `config` — main Sway config
* `keybinds.conf` — keybindings
* `theme.conf` — theme variables and colors
* `themeTokyo.conf` — alternate Tokyo Night theme
* `changeWallpaper.sh` — wallpaper switcher script

### `waybar/`

Waybar configuration and style files.

* `config.jsonc` — bar layout and modules
* `style.css` — visual styling
* `staticStyle`, `coluredStyle`, `unixpStyle` — alternate style presets

### `alacritty/`

Terminal configuration and themes.

* `alacritty.toml` — main Alacritty configuration
* several theme files such as `dracula.toml`, `nord.toml`, `tokyo-night.toml`, and more

### `wofi/`

Launcher configuration and CSS.

* `config` — launcher settings
* `style.css` — main style
* `style1` — alternate style

### `bashrc.d/`

Shell aliases and small shell customizations.

### Other files

* `fastfetch-config.jsonc` — Fastfetch configuration
* `gitBackupConfig.sh` — backup helper script
* `Pictures/` — wallpapers and screenshots used by the setup

---

## Screenshot gallery

To showcase the desktop properly, put your images in a folder inside the repo, then reference them with Markdown like this:

```md
![Alt text](Pictures/your-image.png)
```

Example:

```md
![Sway desktop](Pictures/desktop-overview.png)
```

### Good places to store images

* `Pictures/`
* `assets/`
* `assets/screenshots/`

A clean option is:

```text
assets/
└── screenshots/
    ├── desktop.png
    ├── waybar.png
    └── wofi.png
```

Then use:

```md
![Desktop](assets/screenshots/desktop.png)
```

---

## Installation

> Replace the paths below with your own system paths if needed.

1. Clone the repository:

```bash
git clone https://github.com/Projekt-Boss/swayfx-config.git
cd swayfx-config
```

2. Copy the files to the correct config locations.

Examples:

```bash
mkdir -p ~/.config
cp -r sway ~/.config/
cp -r waybar ~/.config/
cp -r alacritty ~/.config/
cp -r wofi ~/.config/
```

3. Make scripts executable if needed:

```bash
chmod +x sway/changeWallpaper.sh gitBackupConfig.sh
```

4. Restart Sway or reload the config:

```bash
swaymsg reload
```

---

## Customization

You can easily adjust:

* colors and themes in `sway/theme.conf`
* keybindings in `sway/keybinds.conf`
* bar appearance in `waybar/style.css`
* terminal themes in `alacritty/*.toml`
* launcher look in `wofi/style.css`

---

## Notes

This repository is meant as a personal desktop configuration and theme archive. Feel free to use parts of it as a starting point for your own setup.

---

## License

Add a license here if you want others to reuse your configuration.

---

## Tip for GitHub

GitHub will render the images directly in the README as long as the paths are correct and the files are committed to the repository.

If an image does not show up, check:

* the file path is correct
* the filename capitalization matches exactly
* the image file was pushed to GitHub
