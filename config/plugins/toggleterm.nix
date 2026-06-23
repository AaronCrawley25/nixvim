{
  plugins = {
    toggleterm = {
      enable = true;
      settings = {
        size = 20;
        shade_terminals = false;
        start_in_insert = false;
      };
      luaConfig.post = ''
        vim.keymap.set("n", "<C-`>", "<CMD>ToggleTerm<CR>", { desc = "Toggle Terminal" })
        vim.keymap.set("t", "<C-`>", "<Esc><CMD>ToggleTerm<CR>", { desc = "Toggle Terminal" })
      '';
    };
  };
}
