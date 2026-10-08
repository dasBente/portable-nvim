{
  flake.nvfModules.lang-sql = {
    config = {
      vim.languages.sql = {
        enable = true;

        extraDiagnostics.enable = true;
        format.enable = true;
        lsp.enable = true;
        treesitter.enable = true;
      };
    };
  };
}
