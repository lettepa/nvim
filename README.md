# Neovim

Lettepa for [Neovim].

## Setup

Configure Lettepa, then activate it using Neovim's colorscheme command:

```lua
require("lettepa").setup()
vim.cmd.colorscheme("lettepa")
```

`setup()` configures the theme but does not replace the currently active
colorscheme. If Lettepa is already active, calling `setup()` again reapplies the
new configuration.

## Styles

By default, Lettepa follows Neovim's `background` option: `light` selects the
light palette and `dark` selects the dark palette. This mapping can be
customized; the keys correspond to `background` values and the values name the
palette to apply:

```lua
require("lettepa").setup({
  styles = {
    light = "dark",
    dark = "light",
  },
})
vim.cmd.colorscheme("lettepa")
```

The default mapping is equivalent to:

```lua
styles = {
  light = "light",
  dark = "dark",
}
```

Unspecified entries retain their defaults. While Lettepa is active, changing
`background` reapplies the palette selected by this mapping.

## Highlight groups

All highlight groups are enabled by default.

| Group | Source | Highlight definitions |
| --- | --- | --- |
| `builtin` | [Neovim] built-in highlights | `:help highlight` |
| `mini.statusline` | [mini.nvim] `mini.statusline` | `:help MiniStatusline-hl-groups` |
| `mini.tabline` | [mini.nvim] `mini.tabline` | `:help MiniTabline-hl-groups` |

Set `mini = true` to enable both Mini modules (the default behavior), or
`mini = false` to disable both. To select them individually, use a table;
omitted entries remain enabled:

```lua
require("lettepa").setup({
  groups = {
    builtin = true,
    mini = {
      statusline = true,
      tabline = false,
    },
  },
})
vim.cmd.colorscheme("lettepa")
```

Calling `setup()` while Lettepa is active reloads the theme from a clean
highlight state, so disabled groups do not retain colors from the previous
configuration.

## License

Like [Lettepa], the Neovim port of Lettepa is licensed under the [MIT License].

[Lettepa]: https://github.com/lettepa/lettepa
[MIT License]: LICENSE
[Neovim]: https://github.com/neovim/neovim
[mini.nvim]: https://github.com/nvim-mini/mini.nvim
