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

## License

Like [Lettepa], the Neovim port of Lettepa is licensed under the [MIT License].

[Lettepa]: https://github.com/lettepa/lettepa
[MIT License]: LICENSE
[Neovim]: https://github.com/neovim/neovim
