{
  plugins = {
    persisted = {
      enable = true;
      enableTelescope = true;
      settings.autoload = true;
      luaConfig.post = ''
        -- Make telescope save the session and delete open buffers
        vim.api.nvim_create_autocmd("User", {
          pattern = "PersistedTelescopeLoadPre",
          callback = function(session)
            -- Save the currently loaded session passing in the path to the current session
            require("persisted").save({ session = vim.g.persisted_loaded_session })

            -- Delete all of the open buffers
            vim.api.nvim_input("<ESC>:%bd!<CR>")
          end,
        })

        -- Make persisted remember buffer order for barbar
        vim.opt.sessionoptions:append("globals")
        vim.api.nvim_create_autocmd({ "User" }, {
          pattern = "PersistedSavePre",
          group = vim.api.nvim_create_augroup("PersistedHooks", {}),
          callback = function()
            vim.api.nvim_exec_autocmds("User", { pattern = "SessionSavePre" })
          end,
        })

        vim.keymap.set("n", "<leader>s", "<Cmd>Telescope persisted<CR>", { desc = "Telescope sessions" })
      '';
    };
  };
}
