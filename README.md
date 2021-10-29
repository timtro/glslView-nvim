# `glslView-nvim`

When editing GLSL shaders,
  this plugin provides the command `GlslView` which will open glslViewer to the
  file in the current buffer, and leave it to automatically  listen for file changes.


## Alternatives
 * [vim-GlslViewer](https://github.com/patriciogonzalezvivo/vim-glslViewer) -
    Version drift seems to have rendered it useless (at this time) since it
    laucnes the process with `&` to free up the UI, but this causes glslViewer
    to stop rendering.
