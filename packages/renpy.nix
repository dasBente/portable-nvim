{...}: {
  imports = [
    ./common.nix
    ../modules/languages
  ];
  config.lang.renpy.enable = true;
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
    };

    treesitter = {
      autotagHtml = true;
      highlight.enable = true;
    };
  };
}
