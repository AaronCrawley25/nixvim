{
  plugins = {
    lspconfig.enable = true;

    # Snipets
    friendly-snippets.enable = true;
    luasnip = {
      enable = true;
      fromVscode = [ { } ];
    };

    cmp = {
      enable = true;
      autoEnableSources = true;

      luaConfig.pre = ''
        -- Kinds
        local cmp_kinds = {
          Text = " Text ",
          Method = " Method ",
          Function = " Function ",
          Constructor = " Constructor ",
          Field = " Field ",
          Variable = " Variable ",
          Class = " Class ",
          Interface = " Interface ",
          Module = " Module ",
          Property = " Property ",
          Unit = " Unit ",
          Value = " Value ",
          Enum = " Enum ",
          Keyword = " Keyword ",
          Snippet = " Snippet ",
          Color = " Color ",
          File = " File ",
          Reference = " Reference ",
          Folder = " Folder ",
          EnumMember = " EnumMember ",
          Constant = " Constant ",
          Struct = " Struct ",
          Event = " Event ",
          Operator = " Operator ",
          TypeParameter = " TypeParameter ",
        }

        local luasnip = require("luasnip")
      '';

      settings = {
        preselect = "cmp.PreselectMode.Item";

        completion = {
          completeopt = "menu,menuone,noinsert";
        };

        sources = [
          {
            name = "nvim_lsp";
          }
          {
            name = "luasnip";
          }
          {
            name = "path";
          }
        ];

        snippet.expand = ''
          function(args)
            -- You need Neovim v0.10 to use vim.snippet
            luasnip.lsp_expand(args.body)
          end
        '';

        formatting = {
          fields = [
            "kind"
            "abbr"
          ];
          format = ''
            function(_, item)
              item.kind = cmp_kinds[item.kind] or ""
              return item
            end
          '';
        };

        mapping = {
          "<CR>" = ''
            cmp.mapping({
              i = function(fallback)
                if cmp.visible() and cmp.get_selected_entry() then
                  cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
                else
                  fallback()
                end
              end,
              s = cmp.mapping.confirm({ select = true }),
              c = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
            })
          '';

          "<Tab>" = ''
            cmp.mapping(function(fallback)
              local col = vim.fn.col(".") - 1

              -- Select next only if visible and hasn't wrapped off end of list
              if cmp.visible() and cmp.get_selected_entry() then
                cmp.select_next_item({ behavior = "select" })
              elseif luasnip.locally_jumpable(1) then
                luasnip.jump(1)
              else
                -- If its still visible we want to close it
                if cmp.visible() then
                  cmp.close()
                end

                fallback()
              end
            end, { "i", "s" })
          '';

          "<S-Tab>" = ''
            cmp.mapping(function(fallback)
              if cmp.visible() then
                cmp.select_prev_item({ behavior = "select" })
              elseif luasnip.locally_jumpable(-1) then
                luasnip.jump(-1)
              else
                fallback()
              end
            end, { "i", "s" })
          '';

          "<Esc>" = ''
            function(fallback)
              if cmp.visible() then
                cmp.close()
              else
                fallback()
              end
            end
          '';

          "<C-Space>" = "cmp.mapping.complete()";
        };
      };

      luaConfig.post = ''
        local cmp_autopairs = require("nvim-autopairs.completion.cmp")
        cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
      '';
    };

    lsp-signature = {
      enable = true;

      settings = {
        handler_opts = {
          border = "none";
        };
        floating_window = true;
        floating_window_off_x = 0;
        hint_enable = false;
      };
    };
  };
}
