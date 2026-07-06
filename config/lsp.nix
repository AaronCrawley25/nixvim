{ pkgs, ... }:
{
  lsp = {
    servers = {
      nil_ls.enable = true;
      lua_ls.enable = true;
      pyright.enable = true;
      ts_ls.enable = true;
      qmlls.enable = true;
      cssls = {
        enable = true;
        package = pkgs.callPackage ./vscode-langservers-extracted.nix { };
      };
    };

    keymaps = [
      {
        key = "K";
        lspBufAction = "hover";
        mode = [ "n" ];
      }
      {
        key = "gd";
        lspBufAction = "definition";
      }
      {
        key = "gD";
        lspBufAction = "references";
      }
      {
        key = "gi";
        lspBufAction = "implementation";
      }
      {
        key = "go";
        lspBufAction = "type_definition";
      }
      {
        key = "gr";
        lspBufAction = "references";
      }
      {
        key = "gs";
        lspBufAction = "signature_help";
      }
      {
        key = "<F2>";
        lspBufAction = "rename";
      }
      {
        key = "<A-CR>";
        lspBufAction = "code_action";
      }
    ];
  };
}
