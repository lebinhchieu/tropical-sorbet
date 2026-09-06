# 🥭 Mango Parrot (git-delta)

A [git-delta](https://github.com/dandavison/delta) config for Mango Parrot (light): diff chrome (plus/minus lines, file/hunk headers, line numbers) styled to match the theme. Code-content syntax highlighting uses delta's bundled `GitHub` theme rather than a custom Mango Parrot one — building a full Sublime/TextMate syntax theme was out of scope for this pass.

## Install

Add an include to your `~/.gitconfig` pointing at this file (adjust the path to wherever you clone this repo):

```ini
[include]
	path = ~/workspace/theme-vscode/delta/mango-parrot.gitconfig
```

Then make delta your pager:

```ini
[core]
	pager = delta
[interactive]
	diffFilter = delta --color-only
```

**lazygit users:** lazygit invokes delta directly rather than through `core.pager`, so it needs its own tweak in `~/.config/lazygit/config.yml` — make sure `--dark` isn't in the pager command (it overrides this config's `light = true` and everything else):

```yaml
git:
  paging:
    colorArg: always
    pager: delta --paging=never --side-by-side
```

## Palette notes

Plus/minus line backgrounds reuse the same blend (18%/35% opacity over `#FCF8F1`) as `DiffAdd`/`DiffDelete`/`Visual` in the [Neovim port](https://github.com/lebinhchieu/nvim-theme), so a diff looks the same in a terminal pager as it does inside Neovim.
