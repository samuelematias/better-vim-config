return {
	theme = {
		name = "dracula"
	},
	flags = {
		disable_tabs = true
	},
	mappings = {
		custom = {
			-- Language server client
			["<leader>fla"] = {
				"<cmd>LSClientFindCodeActions<cr>",
				"[Flutter] Open Code Actions by vim-lsc"
			},
			-- Flutter
			["<leader>flc"] = {
				"<cmd>Telescope flutter commands<cr>",
				"[Flutter] Open commands by Telescope"
			},
			-- Neogit
			["<leader>gg"] = {
				"<cmd>Neogit<cr>",
				"Open Neogit"
			},
			-- Dap Debug
			["<leader>dbi"] = {
				"<cmd>DapContinue<cr>",
				"Init Dap Debug"
			},
			["<leader>dbc"] = {
				"<cmd>DapContinue<cr>",
				"Continue Dap Debug"
			},
			["<leader>dbb"] = {
				"<cmd>DapToggleBreakpoint<cr>",
				"Toggle Breakpoint Dap Debug"
			},
			["<leader>dbn"] = {
				"<cmd>DapStepOver<cr>",
				"Next Dap Debug"
			},
			["<leader>dbp"] = {
				"<cmd>DapStepInto<cr>",
				"Previous Dap Debug"
			},
			["<leader>dbs"] = {
				"<cmd>DapTerminate<cr>",
				"Stop Dap Debug"
			},
			-- WhichKey
			["<leader>w"] = {
				"<cmd>WhichKey <c-w><cr>",
				"Window options"
			},
			["<leader>wd"] = {
				"<cmd>:q<cr>",
				"Close Window"
			},
			-- Remap File finder (persp-mode/emacs like)
			["<leader>jj"] = {
				"<cmd>Telescope buffers<cr>",
				"Show buffers"
			},
			["<leader>jk"] = {
				"<cmd>Bdelete<cr>",
				"Kill buffer"
			},
			["<leader><leader>"] = {
				"<cmd>Telescope find_files<cr>",
				"Find file"
			},
			["<leader>jb"] = {
				"<cmd>botright new<cr>",
				"New empty buffer"
			},
			-- Remap NvimTreeToggle
			["<leader>op"] = {
				"<cmd>NvimTreeToggle<cr>",
				"Open file explorer"
			},
		}
	}
}
