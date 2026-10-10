# 🥭 Mango Parrot (Herdr)

A [Herdr](https://herdr.dev) UI theme for Mango Parrot (light), using the same colors as the VS Code theme and the [WezTerm port](../wezterm/).

## Install

Herdr only loads built-in themes plus `[theme.custom]` color overrides, so there's no file to drop in. Copy the `[theme]` and `[theme.custom]` sections from `mango-parrot.toml` into `~/.config/herdr/config.toml` (on Windows, `%APPDATA%\herdr\config.toml`), replacing your existing `[theme]` section. Then:

```bash
herdr config check
herdr server reload-config
```

`catppuccin-latte` is the base theme. All 19 color tokens are overridden, so it only shows through for tokens a future Herdr version adds.
