{...}: {
  vim = {
    viAlias = true;
    vimAlias = true;

    spellcheck.enable = true;

    telescope.enable = true;
    autocomplete.nvim-cmp.enable = true;

    lsp = {
      enable = true;
      formatOnSave = true;
    };

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
      enableFormat = true;
      enableTreesitter = true;

      # add languages for everyday use
      bash.enable = true;
      html.enable = true;
      ts.enable = true;
      css.enable = true;
      nix.enable = true;
    };

    visuals = {
      nvim-web-devicons.enable = true;
      nvim-cursorline.enable = true;
    };

    filetree.neo-tree.enable = true;

    treesitter = {
      enable = true;
      autotagHtml = true;
      context.enable = true;
      highlight.enable = true;
    };

    binds = {
      whichKey.enable = true;
      cheatsheet.enable = true;
    };

    git = {
      enable = true;
      gitsigns.enable = true;
    };

    dashboard.dashboard-nvim.enable = true;
    projects.project-nvim.enable = true;
    comments.comment-nvim.enable = true;
  };
}
