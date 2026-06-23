{
  plugins = {
    oil = {
      enable = true;
      settings = {
        watch_for_changes = true;
        view_options = {
          show_hidden = true;
        };
        git = {
          mv = {
            __raw = ''
              function(src, dest)
              return true
              end
            '';
          };
          rm = {
            __raw = ''
              function(path)
              return true
              end
            '';
          };
        };
        confirmation = {
          border = "single";
        };
        skip_confirm_for_simple_edits = true;
      };
      luaConfig.post = ''
        vim.keymap.set("n", "<leader>bf", "<CMD>Oil<CR>", { desc = "Browse files (oil)" })
      '';
    };
  };
}
