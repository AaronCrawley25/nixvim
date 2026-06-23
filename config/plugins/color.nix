{ pkgs, ... }:
{
  extraPlugins = with pkgs; [
    vimPlugins.sonokai
  ];
}
