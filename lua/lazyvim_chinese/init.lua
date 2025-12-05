local M = {}

local wk_ok, wk = pcall(require, "which-key")
local translate = require("lazyvim_chinese.translate")

local enabled = false

local function apply(trans_map)
	if not wk_ok then
		return
	end
	local regs = {}
	for lhs, name in pairs(trans_map) do
		regs[lhs] = { name = name }
	end
	wk.register(regs)
end

function M.enable()
	if enabled then
		return
	end
	enabled = true
	apply(translate.cn)
end

function M.disable()
	if not enabled then
		return
	end
	enabled = false
	apply(translate.en)
end

function M.toggle()
	if enabled then
		M.disable()
	else
		M.enable()
	end
end

function M.setup()
	vim.keymap.set(
		"n",
		"<leader>uC",
		function()
			require("lazyvim_chinese").toggle()
		end,
		{ desc = "菜单汉化切换" }
	)

	M.enable()

	vim.api.nvim_create_autocmd("User", {
		pattern = "VeryLazy",
		callback = function()
			if enabled then
				apply(translate.cn)
			else
				apply(translate.en)
			end
		end,
	})
end

return M
