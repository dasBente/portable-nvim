{
  flake.nixosModules.lang-typescript = {
    config = {
      vim.languages.typescript = {
        enable = true;
        format.enable = true;
        treesitter.enable = true;
        extraDiagnostics.enable = true;
        lsp.enable = true;

        extensions = {
          ts-error-translator.enable = true;
        };
      };
    };
  };
}
