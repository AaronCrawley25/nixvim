{
  plugins = {
    # TODO: debugger configurations with shells and whatnot
    dap = {
      enable = true;
      luaConfig.post = ''
        local dap = require("dap")

        -- Stop file editing whilst debugging
        dap.listeners.before.attach.nomod = function()
          vim.opt_local.modifiable = false
        end

        dap.listeners.before.launch.nomod = function()
          vim.opt_local.modifiable = false
        end

        dap.listeners.before.event_terminated.nomod = function()
          vim.opt_local.modifiable = true
        end

        dap.listeners.before.event_exited.nomod = function()
          vim.opt_local.modifiable = true
        end

        dap.listeners.after.event_terminated.nomod = function()
          vim.opt_local.modifiable = true
        end

        dap.listeners.after.event_exited.nomod = function()
          vim.opt_local.modifiable = true
        end

        vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
        vim.keymap.set("n", "<F5>", dap.continue)
        vim.keymap.set("n", "<S-F5>", dap.terminate)
        vim.keymap.set("n", "<C-F5>", dap.pause)
        vim.keymap.set("n", "<leader>dj", dap.step_over)
        vim.keymap.set("n", "<leader>dl", dap.step_into)
        vim.keymap.set("n", "<leader>dh", dap.step_out)
      '';
    };

    dap-view = {
      enable = true;
      settings = {
        auto_toggle = true;
      };
    };

    dap-virtual-text = {
      enable = true;
      settings = {
        virt_text_pos = "eol";
        commented = true;
      };
    };
  };
}
