{...}: {
  config.vim = {
    viAlias = true;
    vimAlias = true;

    spellcheck.enable = true;

    telescope.enable = true;
    autocomplete.nvim-cmp.enable = true;

    lsp = {
      formatOnSave = true;
    };

    languages = {
      enableLSP = true;
      enableFormat = true;
      enableTreesitter = true;

      # add languages for everyday use
      nix.enable = true;
      markdown.enable = true;
      lua.enable = true;
      bash.enable = true;
    };

    visuals = {
      nvim-web-devicons.enable = true;
      nvim-cursorline.enable = true;
    };

    filetree.neo-tree.enable = true;
    treesitter.context.enable = true;

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
