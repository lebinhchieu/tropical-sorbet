# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

A VS Code color theme extension — **Tropical Sorbet** (light) and **Tropical Sorbet Night** (dark). No build step, no JavaScript. The entire extension is two JSON files in `themes/`.

## Commands

**Preview the theme live:**
Open VS Code, press `F5` — this launches an Extension Development Host with the theme loaded. Alternatively use the launch config named `Extension Development Host`.

**Package for distribution:**
```bash
npm run package   # alias for: vsce package
```
Requires `vsce` installed globally (`npm install -g @vscode/vsce`). Produces a `.vsix` file.

**Install a local `.vsix` manually:**
```bash
code --install-extension tropical-sorbet-*.vsix
```

## Architecture

```
themes/
  tropical-sorbet-color-theme.json        # Light variant (uiTheme: "vs")
  tropical-sorbet-night-color-theme.json  # Dark variant (uiTheme: "vs-dark")
package.json                              # Extension manifest + contributes.themes
```

Each theme JSON has two top-level sections:

- **`colors`** — VS Code workbench UI keys (editor, sidebar, tabs, status bar, terminal, etc.). These use hex colors directly.
- **`tokenColors`** — TextMate grammar scopes for syntax highlighting. Each rule has a `scope` (string or array of TextMate scope selectors) and `settings` with `foreground`/`fontStyle`.

`semanticHighlighting: true` is set on both themes, which enables LSP-driven token overrides on top of the TextMate layer.

## Palette reference

### Light — Tropical Sorbet
| Role | Token | Hex |
|------|-------|-----|
| Background | Cream | `#FFF6EC` |
| Foreground | Cocoa | `#4A3B30` |
| Keywords | Watermelon | `#E5397A` |
| Functions / properties | Tangerine | `#E8722A` |
| Types / classes | Aqua | `#0E9488` |
| Strings | Lime | `#5E9C2F` |
| Numbers / constants | Grape | `#A24BC9` |
| Operators / brand | Coral | `#FF6B5C` |
| Warnings / find | Lemon | `#E8A700` |

### Dark — Tropical Sorbet Night
Same roles, brightened for dark background (`#2B1E1B`). Coral → `#FF7A6B`, Tangerine → `#FFA552`, Lemon → `#FFD45E`, Lime → `#A9DC6B`, Watermelon → `#FF6FB5`, Aqua → `#46D7C4`, Grape → `#C792EA`.

## Important convention

**Ship look changes as new theme variants — do not edit existing themes in place.** If a new visual direction is needed, add a new entry in `contributes.themes` and a new JSON file rather than overwriting `tropical-sorbet-color-theme.json` or `tropical-sorbet-night-color-theme.json`.
