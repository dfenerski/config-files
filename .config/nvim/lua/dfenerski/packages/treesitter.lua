return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function () 
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ignore_install = { "help" },
			ensure_installed = { "help", "query", "c", "lua", "vim", "bash", "javascript", "typescript", "html", "css", "rust", "julia" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },  
		})
	end
}
