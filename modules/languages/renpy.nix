{
  pkgs,
  lib,
  config,
  inputs,
  ...
}: {
  options.lang.renpy.enable = lib.mkEnableOption "Enables renpy language support";

  config = lib.mkIf config.lang.renpy.enable (
    let
      renpy-syntax-nvim-pkg = pkgs.vimUtils.buildVimPlugin {
        name = "renpy-syntax";
        src = inputs.renpy-syntax-nvim;
      };
    in {
      vim.extraPlugins = {
        renpy-syntax-nvim = {
          package = renpy-syntax-nvim-pkg;
          setup = "require('renpy-syntax').setup()";
        };
      };
    }
  );
}
