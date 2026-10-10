# 🥭 Mango Parrot (WezTerm)

A [WezTerm](https://wezfurlong.org/wezterm/) color scheme for Mango Parrot (light). The 16 ANSI colors, cursor and selection match the VS Code theme's integrated terminal.

## Install

A color scheme file can't hold every WezTerm color — the window frame (fancy tab bar background, title bar, buttons), command palette, char select, and pane select live in the main config. So the port is two files:

- `mango-parrot.toml` — the color scheme (terminal palette, cursor, selection, copy mode, quick select, tab colors)
- `mango-parrot.lua` — sets `color_scheme` plus the colors outside the scheme

Copy or symlink both into WezTerm's config dir (on Windows, `%USERPROFILE%\.config\wezterm\`):

```bash
mkdir -p ~/.config/wezterm/colors
ln -s ~/workspace/theme-vscode/wezterm/mango-parrot.toml ~/.config/wezterm/colors/
ln -s ~/workspace/theme-vscode/wezterm/mango-parrot.lua ~/.config/wezterm/
```

Then in `~/.config/wezterm/wezterm.lua`:

```lua
require('mango-parrot').apply_to_config(config)
```

Call it after any `config.window_frame` font/border settings of your own — it merges into that table rather than replacing it.

## Coverage

Every color key in WezTerm 20240203 (the current stable release) is set except `colors.indexed` (palette entries 16–255). Those stay as the standard xterm 256-color cube, because programs that use 256-color codes expect fixed colors there.
