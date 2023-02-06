lua << EOF
  require("flutter-tools").setup {
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

  require("toggleterm").setup{
    open_mapping = [[<c-t>]],
  }

  local dap, dapui = require("dap"), require("dapui")
  dapui.setup {} -- use default
  require("dapui").setup({
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
  })
  dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
  end
  dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
  end
  dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
  end

  require("chafa").setup({
    render = {
      min_padding = 5,
      show_label = true,
    },
    events = {
      update_on_nvim_resize = true,
    },
  })
EOF
