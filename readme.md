# 🩸Healthy.nvim

A plugin to stay healthy while coding with neovim.

## ✨Features

* Get a message to do a healthy thing
    * Customizable events (Coming soon)
    * Customizable messages


📦Installation
------------
Use your favourite package manager and call setup function.
```vim
" Vimscript with vim-plug
Plug 'max397574/healthy.nvim'
lua require("healthy_nvim").init()
```
```
-- lua with packer.nvim
use {"max397574/healthy.nvim",
  config = function()
    require("healthy_nvim").init()
  end
}
```
## ⚙️ Customization
You can customize with the following lines in a vim configuration. These are the default settings.
```lua
lua << EOF
require('healthy_nvim').setup{
  messages = {
    "Posture check📏",
    "Drink water💧",
    "Stand Up a little bit🪑❌",
    "Do some pushups or squats🏋️"
  }
}
EOF
```
And this in a lua configuration:
```lua
require('healthy_nvim').setup{
  messages = {
    "Posture check📏",
    "Drink water💧",
    "Stand Up a little bit🪑❌",
    "Do some pushups or squats🏋️"
  }
}
```
