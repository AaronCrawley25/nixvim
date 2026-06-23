{
  plugins = {
    lualine = {
      enable = true;

      settings = {
        options = {
          theme = {
            __raw = ''
              function()
                local trans = require("lualine.themes.auto")
                trans.normal.c.bg = "none"
                trans.insert.c.bg = "none"
                trans.visual.c.bg = "none"
                trans.replace.c.bg = "none"
                trans.terminal.c.bg = "none"
                trans.command.c.bg = "none"
                return trans
              end
            '';
          };
          component_separators = "|";
          section_separators = {
            left = "";
            right = "";
          };
        };
        sections = {
          lualine_a = {
            __raw = ''
              { { "mode", separator = { left = "" }, right_padding = 2 } }
            '';
          };
          lualine_b = [
            "branch"
            "diff"
            "diagnostics"
            "filename"
          ];
          lualine_c = [
            "%="
          ];
          lualine_x = [ "" ];
          lualine_y = [
            "encoding"
            "fileformat"
            "lsp_status"
            "filetype"
          ];
          lualine_z = {
            __raw = ''
              { { "location", separator = { right = "" }, left_padding = 2 }, }
            '';
          };
        };
        inactive_sections = {
          lualine_a = [ "filename" ];
          lualine_b = [ ];
          lualine_c = [ ];
          lualine_x = [ ];
          lualine_y = [ ];
          lualine_z = [ "location" ];
        };
        tabline = { };
      };

      luaConfig.pre = "";
    };
  };
}
