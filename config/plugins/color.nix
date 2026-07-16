{ pkgs, ... }:
{
  extraPlugins = with pkgs; [
    vimPlugins.sonokai
    vimPlugins.pywal-nvim
  ];
}
