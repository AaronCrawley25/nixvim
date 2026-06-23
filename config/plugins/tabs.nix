{
  plugins = {
    barbar = {
      enable = true;
      settings = {
        icons = {
          buffer_index = true;
        };
      };
      keymaps = {
        previous.key = "<A-h>";
        next.key = "<A-l>";
        movePrevious.key = "<A-H>";
        moveNext.key = "<A-L>";
        close.key = "<A-c>";
        goTo1.key = "<A-1>";
        goTo2.key = "<A-2>";
        goTo3.key = "<A-3>";
        goTo4.key = "<A-4>";
        goTo5.key = "<A-5>";
        goTo6.key = "<A-6>";
        goTo7.key = "<A-7>";
        goTo8.key = "<A-8>";
        goTo9.key = "<A-9>";
      };
      luaConfig.pre = ''
        vim.keymap.set("n", "<A-C>", "<Cmd>BufferClose!<CR>", {noremap = true, silent = true})
      '';
    };
  };
}
