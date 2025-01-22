{ pkgs, lib, ... }:

{
  vim = {

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

      nix.enable = true;
      markdown.enable = true;
      bash.enable = true;
      css.enable = true;
      html.enable = true;
      python.enable = true;
      ts.enable = true;
      rust.enable = true;
      rust.crates.enable = true;
      lua.enable = true;
      tailwind.enable = true;
      svelte.enable = true;
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
    sessions.nvim-session-manager.enable = true;
    comments.comment-nvim.enable = true;
  };
}
