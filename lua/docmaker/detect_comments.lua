local ts_utils = require 'nvim-treesitter.ts_utils'
local parsers = require 'nvim-treesitter.parsers'

function detect_comments(bufnr)
  bufnr = bufnr or vim.api.nvim_get_current_buf()
  local parser = parsers.get_parser(bufnr)
  if not parser then
    return
  end

  local tree = parser:parse()[1]
  local root = tree:root()

  local query = vim.treesitter.query.parse(
    parser:lang(),
    [[
      (comment) @comment
    ]]
  )

  for id, node, _ in query:iter_captures(root, bufnr, 0, -1) do
    local comment_text = vim.treesitter.get_node_text(node, bufnr)

    print('Detected comment: ', comment_text)
  end
end
