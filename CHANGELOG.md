# Changelog

All notable changes to Tropical Sorbet are documented here.

## [1.2.4] — 2026-10-14

### Fixed
- Mango Parrot: `gitDecoration.ignoredResourceForeground` darkened from `#C8BBA4` (1.79:1 contrast) to `#968A76` (3.20:1) so git-ignored files in the sidebar are readable.

## [1.2.3] — 2026-09-06

### Fixed
- Tropical Sorbet / Tropical Sorbet Day: `scrollbar.shadow` was an opaque, light border color instead of a dark, semi-transparent one, causing visible banding instead of a smooth fade at panel/scroll edges.
- Tropical Sorbet / Tropical Sorbet Day: unified 16 chrome-panel background keys (sidebar, editor widgets, quick-pick, dropdown, panel, notifications, tabs, etc.) that used a slightly different cream shade than `editor.background`, causing a visible seam where they sit adjacent (e.g. Quick Open's file list next to its own preview pane).

## [1.0.0] — 2026-06-25

### Added
- **Tropical Sorbet** light theme — bright coral & citrus candy on warm cream (`#FFF6EC`)
- **Tropical Sorbet Night** dark companion — same candy palette on warm cocoa (`#2B1E1B`)
- Full workbench color coverage: editor, activity bar, sidebar, tabs, status bar, terminal, panel, menus, diff, git decorations, debug, notifications
- Syntax token colors for TypeScript, JavaScript, JSX/TSX, Python, Rust, Go, HTML, CSS, JSON, YAML, Markdown, Bash
- Semantic highlighting for both themes
- Signature coral status bar in light mode; coral status bar with dark text in Night mode
- ANSI terminal colors mapped to the candy palette for both variants
