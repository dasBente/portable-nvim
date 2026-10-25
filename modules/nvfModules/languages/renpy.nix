{
  inputs,
  lib,
  ...
}: {
  flake.nvfModules.languages = {
    pkgs,
    config,
    ...
  }: {
    options.languages.renpy.enable = lib.mkEnableOption "Enable renpy language tools";

    config = lib.mkIf config.languages.renpy.enable {
      vim.extraPlugins = {
        renpy-syntax-nvim = {
          package = pkgs.vimUtils.buildVimPlugin {
            name = "renpy-syntax";
            src = inputs.renpy-syntax-nvim;
          };
          setup = "require('renpy-syntax').setup()";
        };
      };

      vim.treesitter.grammars = [
        (
          pkgs.tree-sitter.buildGrammar {
            language = "renpy";
            version = "";
            src = inputs.renpy-treesitter;
          }
        )
      ];
    };
  };
}
