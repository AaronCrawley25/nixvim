{ pkgs, ... }:
{
  extraPlugins = with pkgs; [
    vimPlugins.sonokai
    (pkgs.vimUtils.buildVimPlugin {
      name = "my-plugin";
      src = pkgs.fetchFromGitHub {
        owner = "Senal-D-A-Gunaratna";
        repo = "matugen.nvim";
        rev = "2d13f5e5685723cf67961adf144e9f0fc87a4912";
        hash = "sha256-0NXzA4lrV/LVeywSc23quZC5pNB8AyGUxWYsK1Gg9sE=";
      };
    })
  ];

  extraConfigLua = ''
    require("matugen").setup({
      load_theme = false, -- set this to false to stop the theme from loading
      palette_path = "~/.config/matugen/themes/nvim-colors.json",
    });
  '';
}
