{
  flake.nixosModules.lang-css = {
    config = {
      vim.languages.css = {
        enable = true;
        format.enable = true;
        treesitter.enable = true;
        lsp.enable = true;
      };
    };
  };
}
