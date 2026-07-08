{ inputs, ... }:
{
  imports = [
    ./plugins
    ./keymaps.nix
    ./lsp.nix
  ];

  colorscheme = "sonokai";

  opts = {
    relativenumber = true;
    tabstop = 4;
    softtabstop = 4;
    shiftwidth = 4;
    expandtab = true;
    smartindent = true;
    wrap = false;
    showmatch = true;
    hlsearch = true;
    incsearch = true;
    scrolloff = 10;
    showmode = false;
    signcolumn = "yes";
    foldmethod = "expr";
    foldexpr = "v:lua.vim.treesitter.foldexpr()";
    foldcolumn = "0";
    foldtext = "";
    foldlevel = 99;
    foldlevelstart = 99;
  };

  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };

  autoCmd = [
    {
      event = [ "FileType" ];
      pattern = [ "markdown,yaml,nix" ];
      command = "setlocal shiftwidth=2 tabstop=2 softtabstop=2";
    }
    {
      event = [ "FileType" ];
      pattern = [ "text,markdown" ];
      command = "setlocal textwidth=80";
    }
  ];

  extraConfigLua = ''
    vim.diagnostic.config({
        virtual_text = true,
        signs = {
        text = {
        [vim.diagnostic.severity.ERROR] = "",
        [vim.diagnostic.severity.WARN] = "",
        [vim.diagnostic.severity.HINT] = "⚑",
        [vim.diagnostic.severity.INFO] = "»",
        },
        },
        })
  '';
}
