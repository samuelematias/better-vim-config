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
			["<leader>flrd"] = {
				"<cmd>FlutterRun --flavor development -t lib/main_development.dart<cr>",
				"[Flutter] Debug Flavor Development"
			},
			["<leader>flrs"] = {
				"<cmd>FlutterRun --flavor staging -t lib/main_staging.dart<cr>",
				"[Flutter] Debug Flavor Staging"
			},
			["<leader>flrp"] = {
				"<cmd>FlutterRun --flavor production -t lib/main_production.dart<cr>",
				"[Flutter] Debug Flavor Production"
			},
			["<leader>flrn"] = {
				"<cmd>FlutterRun --no-sound-null-safety<cr>",
				"[Flutter] No Sound Null Safety"
			},
			-- Neogit
			["<leader>gg"] = {
				"<cmd>Neogit<cr>",
				"[Neogit] Open"
			},
			-- Dap Debug
			["<leader>ddi"] = {
				"<cmd>DapContinue<cr>",
				"[Dap Debug] Init"
			},
			["<leader>ddc"] = {
				"<cmd>DapContinue<cr>",
				"[Dap Debug] Continue"
			},
			["<leader>ddb"] = {
				"<cmd>DapToggleBreakpoint<cr>",
				"[Dap Debug] Toggle Breakpoint"
			},
			["<leader>ddn"] = {
				"<cmd>DapStepOver<cr>",
				"[Dap Debug] Next"
			},
			["<leader>ddp"] = {
				"<cmd>DapStepInto<cr>",
				"[Dap Debug] Previous"
			},
			["<leader>dds"] = {
				"<cmd>DapTerminate<cr>",
				"[Dap Debug] Stop"
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
			-- Trouble diagnostics
			["<leader>dt"] = {
				"<cmd>TroubleToggle<cr>",
				"[Trouble] Show diagnostics list"
			},
			-- To-do list
			["<leader>tl"] = {
				"<cmd>TodoTelescope<cr>",
				"[TODO] Show list"
			},
		}
	}
}
