{...}: {
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
      enableLSP = true;

      bash.enable = true;
      html.enable = true;
      ts.enable = true;
      css.enable = true;
      nix.enable = true;
    };

    treesitter = {
      autotagHtml = true;
      highlight.enable = true;
    };
  };
}
