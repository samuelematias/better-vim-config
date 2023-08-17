return {
	theme = {
		name = "dracula"
	},
	flags = {
		disable_tabs = true
	},
	plugins = {
		-- * START - Dart/Flutter Config

		-- Build flutter and dart applications in neovim using the native LSP
		{
			'akinsho/flutter-tools.nvim',
			lazy = false,
			dependencies = {
				"nvim-lua/plenary.nvim",
				"stevearc/dressing.nvim", -- optional for vim.ui.select
				{
					"dart-lang/dart-vim-plugin",
					init = function()
					  vim.g.dart_style_guide = 2
					  vim.g.dart_format_on_save = 1
					  vim.g.dart_html_in_string = true
					  vim.g.dart_trailing_comma_indent = true
					  vim.g.dartfmt_options = { "--fix" }
					end,
				  },
			},
			config = function()
				require("flutter-tools").setup {
					fvm = true, -- takes priority over path, uses <workspace>/.fvm/flutter_sdk if enabled
					closing_tags = {
						enabled = false -- coc.flutter already provides this, the //Widget comment in the final of the line
					},
					debugger = { -- integrate with nvim dap + install dart code debugger
						enabled = true,
						run_via_dap = false, -- use dap instead of a plenary job to run flutter apps
						-- if empty dap will not stop on any exceptions, otherwise it will stop on those specified
						-- see |:help dap.set_exception_breakpoints()| for more info
						exception_breakpoints = {}
					}
				}
			end,
		},

		-- Dart plugin for vim
		-- "dart-lang/dart-vim-plugin",
		{
			'rcarriga/nvim-dap-ui',
			lazy = false,
			dependencies = {
				"mfussenegger/nvim-dap",
			},
			config = function()
				require("dapui").setup {
					icons = { expanded = "▾", collapsed = "▸", current_frame = "▸" },
					controls = {
						icons = {
							pause = "",
							play = "",
							step_into = "",
							step_over = "",
							step_out = "",
							step_back = "",
							run_last = "↻",
							terminate = "✖",
						}
					}
				}
				require("dap").listeners.after.event_initialized["dapui_config"] = function()
					require("dapui").open()
				end
				require("dap").listeners.before.event_terminated["dapui_config"] = function()
					require("dapui").close()
				end
				require("dap").listeners.before.event_exited["dapui_config"] = function()
					require("dapui").close()
				end
			end,
		},
		-- * END - Dart/Flutter Config
		--
		-- * START - Git Config

		-- Magit for Neovim
		{
			"NeogitOrg/neogit",
			dependencies = {
				"nvim-lua/plenary.nvim", -- required
				"nvim-telescope/telescope.nvim", -- optional
				"sindrets/diffview.nvim", -- optional
			},
			config = true
		},

		-- Super fast git decorations
		-- "lewis6991/gitsigns.nvim",

		-- Single tabpage interface for easily cycling
		-- through diffs for all modified files for any git rev
		-- and can be used as a merge tool too
		-- "sindrets/diffview.nvim",

		-- * END - Git Config

		-- Easily manage multiple terminal windows, inside Neovim
		{
			"akinsho/toggleterm.nvim",
			version = "*",
			config = true,
		},

		-- Neovim plugin for GitHub Copilot
		"Github/copilot.vim",

		-- Git Blame plugin for Neovim
		"f-person/git-blame.nvim",

		-- Delete Neovim buffers without losing window layout
		"famiu/bufdelete.nvim",

		-- Markdown preview plugin for (neo)vim
		-- If you have nodejs and yarn.
		-- After install, open the readme and execute this command bellow:
		-- :call mkdp#util#install()
		-- https://github.com/iamcco/markdown-preview.nvim/issues/509#issuecomment-1272483338
		-- "iamcco/markdown-preview.nvim",
		{
			"iamcco/markdown-preview.nvim",
			init = function()
				vim.g.mkdp_filetypes = { "markdown" }
			end,
			ft = { "markdown" },
			cmd = {
				"MarkdownPreview", "MarkdownPreviewStop", "MarkdownPreviewToggle"
			},
			event = "BufRead",
			build = function()
				vim.fn["mkdp#util#install"]()
			end,
		},

		-- Viewing images on (Neo)Vim
		{
			'princejoogie/chafa.nvim',
			version = "*",
			dependencies = {
				"nvim-lua/plenary.nvim",
				"m00qek/baleia.nvim", -- optional for vim.ui.select
			},
			opts = {
				render = {
					min_padding = 5,
					show_label = true,
				},
				events = {
					update_on_nvim_resize = true,
				},
			}
		},

		-- A pretty diagnostics and code actions UI
		{
			"folke/trouble.nvim",
			dependencies = { 
				"kyazdani42/nvim-web-devicons", },
			config = function()
				require("trouble").setup {
					-- your configuration comes here
					-- or leave it empty to use the default settings
					-- refer to the configuration section below
				}
			end,
		},

		-- Highlight, list and search todo comments in your projects
		{
			"folke/todo-comments.nvim",
			dependencies = { "nvim-lua/plenary.nvim" },
			opts = {
			  -- your configuration comes here
			  -- or leave it empty to use the default settings
			  -- refer to the configuration section below
			}
		  },
	},
	mappings = {
		custom = {
			-- * Language server client
			["<leader>fla"] = {
				"<cmd>LSClientFindCodeActions<cr>",
				"[Flutter] Open Code Actions by vim-lsc"
			},
			-- * Flutter
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
			-- * Neogit
			["<leader>gg"] = {
				"<cmd>Neogit<cr>",
				"[Neogit] Open"
			},
			-- * Dap Debug
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
			-- * WhichKey
			["<leader>w"] = {
				"<cmd>WhichKey <c-w><cr>",
				"Window options"
			},
			["<leader>wd"] = {
				"<cmd>:q<cr>",
				"Close Window"
			},
			-- * Remap File finder (persp-mode/emacs like)
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
			-- * Remap NvimTreeToggle
			["<leader>op"] = {
				"<cmd>NvimTreeToggle<cr>",
				"Open file explorer"
			},
			-- * Trouble diagnostics
			["<leader>dt"] = {
				"<cmd>TroubleToggle<cr>",
				"[Trouble] Show diagnostics list"
			},
			-- * To-do list
			["<leader>tl"] = {
				"<cmd>TodoTelescope<cr>",
				"[TODO] Show list"
			},
		}
	}
}
