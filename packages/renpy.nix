{
  pkgs,
  inputs,
  ...
}: let
  renpy-syntax-nvim-pkg = pkgs.vimUtils.buildVimPlugin {
    name = "renpy-syntax";
    src = inputs.renpy-syntax-nvim;
  };
in {
  imports = [./common.nix];
  vim = {
    languages.svelte = {
      enable = true;
      format.enable = true;
    };

    languages.markdown = {
      enable = true;
      format.enable = true;
    };

    languages = {
      bash.enable = true;
      nix.enable = true;
    };

    treesitter = {
      autotagHtml = true;
      highlight.enable = true;
    };

    extraPlugins = {
      renpy-syntax-nvim = {
        package = renpy-syntax-nvim-pkg;
        setup = "require('renpy-syntax').setup()";
      };
    };
  };
}
