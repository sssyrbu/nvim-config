local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("config.globals")
require("config.keymaps")
require("config.options")

local opts = {
	defaults = {
		lazy = true,
	},
	install = {
		colorscheme = { "gruvbox" },
	},
	rtp = {
		disabled_plugins = {
			"netrw",
			"netrwPlugin",
			"netrwSettings",
			"netrwFileHandlers",
		},
	},
	change_detection = {
		notify = false,
	},
}

require("lazy").setup({ import = "plugins" }, opts)
