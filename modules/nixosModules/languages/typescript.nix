{
  flake.nixosModules.lang-typscript = {
    config = {
      vim.languages.ts = {
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
