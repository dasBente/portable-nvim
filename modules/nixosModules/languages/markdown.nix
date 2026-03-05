{
  flake.nixosModules.lang-markdown = {
    config = {
      vim.languages.markdown = {
        enable = true;
        extraDiagnostics.enable = true;
        format.enable = true;
        lsp.enable = true;
        treesitter.enable = true;
      };
    };
  };
}
