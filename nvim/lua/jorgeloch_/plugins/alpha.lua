return {
	"goolord/alpha-nvim",
	config = function()
		local alpha = require("alpha")
		local theme = require("alpha.themes.dashboard")
		alpha.setup(theme.config)
	end,
}
