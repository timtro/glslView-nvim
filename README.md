# `glslView-nvim`

When editing GLSL shaders,
  this plugin provides the command `GlslView` which will open glslViewer to the
  file in the current buffer,
  and leave it to automatically listen for file changes.

## 📦 Installation

Install the plugin with your preferred package manager.
For example,
  in [packer](https://github.com/wbthomason/packer.nvim) simply:

```lua
  use { 'timtro/glslView-nvim', ft = 'glsl' }
```
Don't forget to `PackerCompile` after installation so that the plugin will only
  be loaded for glsl files.

## ⚙️ Configuration
  * Not yet implemented.
  * The only configuration features planned will allow setting the executable 
      file path for glslViewer—so no big rush.

## 💪 Usage
Simply use the command `:GlslView` to open the current buffer in glslViewer.

## 🧰 Alternatives
 * [vim-GlslViewer](https://github.com/patriciogonzalezvivo/vim-glslViewer) -
    Version drift seems to have rendered it useless (at this time) since it
    laucnes the process with `&` to free up the UI, but this causes glslViewer
    to stop rendering.
