return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		harpoon:setup({
			settings = {
				save_on_toggle = true,
				sync_on_ui_close = true,
				key = function()
					return vim.loop.cwd()
				end,
			},
		})

		-- Basic keymaps
		local keymap = vim.keymap.set

		-- Add current file to harpoon
		keymap("n", "<leader>a", function()
			harpoon:list():add()
		end, { desc = "Harpoon: Add file" })

		-- Toggle harpoon UI
		keymap("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Harpoon: Toggle menu" })

		-- Navigate to harpooned files
		keymap("n", "<C-h>", function()
			harpoon:list():select(1)
		end, { desc = "Harpoon: Go to file 1" })
		keymap("n", "<C-j>", function()
			harpoon:list():select(2)
		end, { desc = "Harpoon: Go to file 2" })
		keymap("n", "<C-k>", function()
			harpoon:list():select(3)
		end, { desc = "Harpoon: Go to file 3" })
		keymap("n", "<C-l>", function()
			harpoon:list():select(4)
		end, { desc = "Harpoon: Go to file 4" })

		-- Toggle previous & next buffers stored within Harpoon list
		keymap("n", "<C-P>", function()
			harpoon:list():prev()
		end, { desc = "Harpoon: Previous file" })
		keymap("n", "<C-N>", function()
			harpoon:list():next()
		end, { desc = "Harpoon: Next file" })
		
		keymap("n", "<leader>h1d", function()
			harpoon:list():remove_at(1)
		end, { desc = "Harpoon: Remove index 1" })

		keymap("n", "<leader>h2d", function()
			harpoon:list():remove_at(2)
		end, { desc = "Harpoon: Remove index 2" })

		keymap("n", "<leader>h3d", function()
			harpoon:list():remove_at(3)
		end, { desc = "Harpoon: Remove index 3" })

		keymap("n", "<leader>h4d", function()
			harpoon:list():remove_at(4)
		end, { desc = "Harpoon: Remove index 4" })
	end,
}
