{ pkgs, ... }:
{
  plugins.lint = {
    enable = true;
    lintersByFt = {
      # https://mason-registry.dev/registry/list
      markdown = [ "markdownlint" ];
      yaml = [ "yamllint" ];
      make = [ "checkmake" ];
      # json = [ "jsonlint" ];
    };
  };

  extraPackages = with pkgs; [
    markdownlint-cli
    yamllint
    checkmake
    # jsonlint
  ];
}
