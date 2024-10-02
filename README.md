# ✨ ChromaBuffer ✨

ChromaBuffer is a Neovim plugin that provides dynamic color codes based on the currently set colorscheme. 🌈 This plugin is designed to work seamlessly with plugins like `bufferline.nvim`, allowing users to dynamically adjust highlights according to the active colorscheme without directly modifying the `bufferline` settings.

## 🌟 Features

- 🎨 **Dynamically generates color codes** based on the current colorscheme.
- 🧩 **Provides a simple interface** for integrating with plugins such as `bufferline.nvim`.
- ⚙️ **Allows users to manage `bufferline` settings** on their own, while using ChromaBuffer to adapt colors dynamically.

## 📦 Installation

You can install ChromaBuffer using your favorite plugin manager. Here is an example using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
 {
  'mei28/chromabuffer',
 }
```
## 🚀 Usage
### 🔗 Integrating with Bufferline
ChromaBuffer provides the color highlights you can use for configuring bufferline. The following example shows how to integrate ChromaBuffer with bufferline.nvim.

Set up ChromaBuffer in your init.lua or equivalent configuration file:

```lua
{
  {
    'akinsho/bufferline.nvim',
    config = function()
      local _, bufferline = pcall(require, "bufferline")
      local _, chroma = pcall(require, "chromabuffer")

      chroma.setup({ highlight_template = 'default' })
      local highlights = chroma.get_bufferline_highlights()

      bufferline.setup({
        options = {
          mode = "buffers",
          separator_style = 'thin',
          always_show_bufferline = true,
          show_buffer_close_icons = false,
          show_close_icon = false,
          color_icons = true,
          indicator = { style = 'underline' },
        },
        highlights = {
          separator = {
            fg = highlights.separator_fg,
            bg = highlights.bg,
          },
          separator_selected = {
            fg = highlights.separator_fg,
          },
          background = {
            fg = highlights.background_fg,
            bg = highlights.bg,
          },
          buffer_selected = {
            fg = highlights.selected_fg,
            bold = true,
            italic = false,
          },
          fill = {
            bg = highlights.fill_bg,
          },
        }
      })
    end,
    dependencies = { 'mei28/chromabuffer/' }
  }
}
```
## 📜 License
This project is licensed under the MIT License. See the LICENSE file for details. ⚖️

## 🤝 Contributing
Contributions are welcome! 🎉 Please feel free to open issues or pull
