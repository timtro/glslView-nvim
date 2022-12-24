# `glslView-nvim`

When editing GLSL shaders,
  this plugin provides the command `GlslView` which will open 
  [glslViewer](https://github.com/patriciogonzalezvivo/glslViewer)
  to the file being edited in the current buffer.
By default, it is opened with the `-l` flag so that `glslViewer` will automatically listen
  for file changes,
  updating the preview as you save.

## 📦 Installation
Install the plugin with your preferred package manager.
For example,
  in [packer](https://github.com/wbthomason/packer.nvim) simply:

```lua
  use { 'timtro/glslView-nvim', ft = 'glsl' }
```
Don't forget to `PackerCompile` after installation so that the plugin will only
  be loaded for glsl files.
You'll also need a plugin to detect the glsl filetype.
I use [vim-glsl](https://github.com/tikhomirov/vim-glsl) which also provides
  syntax highlighting.

#### Installing `glslViewer`
See [installation](https://github.com/patriciogonzalezvivo/glslViewer/wiki/Installing)
  in the glslViewer Wiki.


## ⚙️ Configuration
Configuration is done by passing options to `setup()`:

```lua
require('glslView').setup {
  exe_path = '/path/to/glslViewer',
  arguments = { '-l', '-w', '128', '-h', '256' },
}
```

The default options are:
 * `exe_path`: `'glslViewer'`
 * `arguments`: `{ '-l' }`

## 💪 Usage
Simply use the command `:GlslView` to open the current buffer in glslViewer.

Additional arguments will be passed to the executable after any arguments set in configuration.

For example, to start with a 128x256 window:

```vimscript
:GlslView -w 128 -h 256
```

## 🧰 Alternatives
 * [vim-GlslViewer](https://github.com/patriciogonzalezvivo/vim-glslViewer) -
    Version drift seems to have rendered it useless (at this time) since it
    laucnes the process with `&` to free up the UI, but this causes glslViewer
    to stop rendering (and then in my case, close).
