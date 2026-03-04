{inputs, ...}: {
  flake.nixosModules.languages = {
    pkgs,
    lib,
    config,
    ...
  }: {
    options.lang.renpy.enable = lib.mkEnableOption "Enables renpy language support";

    config = lib.mkIf config.lang.renpy.enable {
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
