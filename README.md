# sulaverse

A dark/light color palette with semantic design tokens, built as a single CSS file.

## Demo

Live preview: https://sulring.github.io/sulaverse

## Contents

- `color-theme-extended.css` — the palette and all component styles
- `index.html` — interactive palette demo with dark/light toggle

## Palette

15 tokens in three groups:

**Base** — `--background`, `--surface`, `--overlay`, `--muted`, `--subtle`, `--text`

**Accents** — `--accent-1` through `--accent-6`

**Highlights** — `--highlight-low`, `--highlight-med`, `--highlight-high`

## Usage

```html
<link rel="stylesheet" href="color-theme-extended.css">
```

Dark theme is the default. Apply the `.light` class to switch:

```html
<html class="light">
```

Or toggle it at runtime:

```js
document.documentElement.classList.toggle('light')
```

## Components

The CSS includes ready-to-use styles for: buttons, panels, forms, alerts, badges, tabs, navigation, modals, code blocks, tooltips, scrollbars, and dividers. All components reference CSS custom properties — no hardcoded colors.

## Credits

Color palette loosely inspired by [Rose Pine](https://rosepinetheme.com).

## License

MIT
