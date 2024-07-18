return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {

        [[                                           ]],
        [[                                           ]],
        [[      ▐ ▄ ▄▄▄ .       ▌ ▐·▪  • ▌ ▄ ·.      ]],
        [[     •█▌▐█▀▄.▀· ▄█▀▄ ▪█·█▌██ ·██ ▐███▪     ]],
        [[     ▐█▐▐▌▐▀▀▪▄▐█▌.▐▌▐█▐█•▐█·▐█ ▌▐▌▐█·     ]],
        [[     ██▐█▌▐█▄▄▌▐█▌.▐▌ ███ ▐█▌██ ██▌▐█▌     ]],
        [[     ▀▀ █▪ ▀▀▀  ▀█▄▀▪. ▀  ▀▀▀▀▀  █▪▀▀▀     ]],
        [[                                           ]],
        [[                                           ]],

    }

    dashboard.section.buttons.val= {
      dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
      dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("r", "󰅒  Recently used files", ":Telescope oldfiles <CR>"),
      dashboard.button("t", "󰯂  Find text", ":Telescope live_grep <CR>"),
      dashboard.button("c", "  Open Lazy", ":Lazy <CR>"),
      dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
    }



    local function footer()
      local fortune_handle = io.popen("fortune -s")
      local result = fortune_handle:read("*a")
      fortune_handle:close()
      return result
    end

    dashboard.section.footer.val = footer()
    dashboard.section.footer.opts.hl = "Type"
    dashboard.section.buttons.opts.hl = "Keyword"

    dashboard.opts.layout = {
          { type = "padding", val = 7},
			dashboard.section.header,
			{ type = "padding", val = 7},
			dashboard.section.buttons,
			{ type = "padding", val = 7 },
			dashboard.section.footer,
		}

    alpha.setup(dashboard.opts)
  end,
}
