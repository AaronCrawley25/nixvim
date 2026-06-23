{ pkgs, ... }:
{
  plugins = {
    treesitter.enable = true;
    treesitter-context.enable = true;
    # TODO: get treesitter-textobjects working
    # treesitter-textobjects = {
    #   enable = true;
    #   keymaps = {
    #     af = "@function.outer";
    #     if = "@function.inner";
    #     ac = "@class.outer";
    #     if = "@class.inner";
    #   };
    # };
  };
}
