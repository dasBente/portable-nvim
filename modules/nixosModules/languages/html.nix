{
  flake.nixosModules.lang-html = {
    config = {
      vim.languages.html = {
        enable = true;
        format.enable = true;
        lsp.enable = true;
        extraDiagnostics.enable = true;

        treesitter.enable = true;
        treesitter.autotagHtml = true;
      };

      vim.treesitter.autotagHtml = true;
    };
  };
}
