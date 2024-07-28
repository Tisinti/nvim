-- vim transparent
return {
	"xiyaowong/transparent.nvim",
	config = function()
		require("transparent").clear_prefix("NvimTree")
		require("transparent").clear_prefix("BufferLine")
	end,
}
