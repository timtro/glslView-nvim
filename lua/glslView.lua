local M = {}

M.glslView = function()
  local bufnr = vim.api.nvim_get_current_buf()
  local full_file_path = vim.api.nvim_buf_get_name(0)

  local handle -- pre-declared to avoid diagnostic error.
  handle = vim.loop.spawn(
    M.config.exe_path,
    { args = { full_file_path, '-l' } },
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
  M.config = {
    exe_path = 'glslView',
  }

  if opts ~= nil then
    M.config = vim.tbl_deep_extend('force', M.config, opts)
  end
end

return M
