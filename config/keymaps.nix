{
  keymaps = [
    {
      mode = "n";
      key = "G";
      action = "Gzz";
    }
    {
      mode = "n";
      key = "n";
      action = "nzz";
    }
    {
      mode = "n";
      key = "N";
      action = "Nzz";
    }
    {
      mode = "v";
      key = "J";
      action = ":m '>+1<CR>gv=gv";
    }
    {
      mode = "v";
      key = "K";
      action = ":m '<-2<CR>gv=gv";
    }
    {
      mode = "t";
      key = "<Esc>";
      action = "<C-\\><C-n>";
    }
    {
      mode = "n";
      key = "<Esc>";
      action = {
        __raw = "vim.cmd.noh";
      };
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>y";
      action = ''"+y'';
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>p";
      action = ''"+p'';
    }
    {
      mode = "v";
      key = "y";
      action = "ygvo<Esc>";
    }
    {
      mode = "n";
      key = "<leader>;";
      action = "A;<Esc>";
    }
    {
      mode = "n";
      key = "<M-j>";
      action = "<Cmd>cnext<CR>";
    }
    {
      mode = "n";
      key = "<M-k>";
      action = "<Cmd>cprevious<CR>";
    }
    {
      mode = "n";
      key = "H";
      action = "^";
    }
    {
      mode = "n";
      key = "L";
      action = "$";
    }
    {
      mode = "v";
      key = "L";
      action = ">gv";
    }
    {
      mode = "v";
      key = "H";
      action = "<gv";
    }
  ];
}
