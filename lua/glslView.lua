local M = {}

M.config = {
  viewer_path = 'glslViewer',
  args = { '-l' },
}

M.glslView = function(command_args)
  local bufnr = vim.api.nvim_get_current_buf()
  local full_file_path = vim.api.nvim_buf_get_name(0)

  local viewer_args = { full_file_path }
  table.move(M.config.args, 1, #M.config.args, #viewer_args+1, viewer_args);
  table.move(command_args, 1, #command_args, #viewer_args+1, viewer_args);

  local handle -- pre-declared to avoid diagnostic error.
  handle = vim.uv.spawn(
    M.config.viewer_path,
    { args = viewer_args },
    function()
      handle:close()
    end
  )

  if not handle then
    error(debug.traceback 'Failed to spawn glslViewer process.')
  else
    vim.api.nvim_buf_attach(bufnr, false, {
      on_detach = function()
        if not handle:is_closing() then
          handle:kill(15)
        end
      end,
    })
  end
end

M.setup = function(opts)
  if opts ~= nil then
    M.config = vim.tbl_deep_extend('force', M.config, opts)
  end
end

return M
