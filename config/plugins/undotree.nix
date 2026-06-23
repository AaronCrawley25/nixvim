{
  plugins = {
    undotree = {
      enable = true;
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>u";
      action = "<Cmd>UndotreeToggle<CR>";
    }
  ];
}
