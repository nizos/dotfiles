local M = {}

function M.t(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

function M.get_curr_filename()
  return vim.fn.eval("expand('%:t')")
end

function M.get_curr_file_dir()
  return vim.fn.eval("expand('%:p:h')")
end

function M.is_buf_term()
  local buf_type = vim.fn.eval('&buftype')
  if buf_type == 'terminal' then
    return true
  end
  return false
end

function M.open(direction)
  local cmd = 'e'
  local filename = M.get_curr_filename()
  local path = M.get_curr_file_dir()

  if direction ~= nil then
    cmd = direction
  end

  if M.is_buf_term() then
    path = '.'
  end

  vim.cmd(cmd .. ' ' .. path)

  if filename ~= nil then
    local search_cmd = 'call search(" ' .. filename .. '$")'
    vim.cmd(search_cmd)
  end
end

function M.install_lsps()
  local want = {
    'typescript',
    'lua',
    'vue',
    'yaml',
    'json',
    'html',
    'dockerfile',
    'css',
    'bash',
    'python',
  }
  for _, ls in pairs(want) do
    vim.cmd('LspInstall ' .. ls)
  end
end

_G.dump = function(...)
  print(vim.inspect(...))
end

_G.util = M

return M

