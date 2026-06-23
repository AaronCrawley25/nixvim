{ pkgs, ... }:
{
  plugins.conform-nvim = {
    enable = true;

    # TODO: this doesn't work check nixvim issue 1141 for fix
    # autoinstall.enable = true;

    settings = {
      formatters_by_ft = {
        # https://mason-registry.dev/registry/list
        typescriptreact = [ "prettier" ];
        typescript = [ "prettier" ];
        javascriptreact = [ "prettier" ];
        javascript = [ "prettier" ];
        lua = [ "stylua" ];
        yaml = [ "prettier" ];
        json = [ "prettier" ];
        nix = [ "nixfmt" ];
      };

      format_on_save = {
        timeout_ms = 500;
        lsp_format = "fallback";
      };
    };
  };

  extraPackages = with pkgs; [
    prettier
    stylua
    nixfmt
  ];
}
