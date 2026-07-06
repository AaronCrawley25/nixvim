{
  plugins = {
    todo-comments = {
      enable = true;
      luaConfig.post = ''
        vim.keymap.set("n", "<leader>ft", vim.cmd.TodoTelescope, { desc = 'Todo Telescope'})
        vim.keymap.set("n", "<leader>bt", vim.cmd.TodoTrouble, { desc = 'Todo Menu'})
      '';
    };
    highlight-colors.enable = true;
    ts-comments.enable = true;
  };
}
