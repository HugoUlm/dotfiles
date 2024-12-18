-- help to inspect results, e.g.:
-- ':lua _G.dump(vim.fn.getwininfo())'
-- neovim 0.7 has 'vim.pretty_print())
function _G.dump(...)
	local objects = vim.tbl_map(vim.inspect, { ... })
	print(unpack(objects))
end

local M = {}

function M.lsp_get_clients(...)
	---@diagnostic disable-next-line: deprecated
	return M.__HAS_NVIM_011 and vim.lsp.get_clients(...) or vim.lsp.get_active_clients(...)
end

return M
