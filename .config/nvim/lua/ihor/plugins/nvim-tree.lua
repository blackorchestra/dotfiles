return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local nvimtree = require("nvim-tree")

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
      
      view = {
        width = 35,
        relativenumber = true,
      },

      renderer = {
        indent_markers = {
          enable = true,
        },

		    icons = {
			    glyphs = {
				    folder = {
					    arrow_closed = "", -- arrow when folder is closed
					    arrow_open = "", -- arrow when folder is open
				    },
			    },
		    },
	    },
	-- disable window_picker for
	-- explorer to work well with
	-- window splits
	    actions = {
		    open_file = {
			    window_picker = {
				    enable = false,
			    },
		    },
	    },
      filters = {
        custom = { ".DS_Store" },
      },
      git = {
        ignore = false,
      },
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Open Nvim-Tree" })
    keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh files tree" })
  end
}
