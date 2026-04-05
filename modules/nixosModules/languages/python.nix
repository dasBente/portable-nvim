{
  flake.nixosModules.lang-python = {...}: {
    config = {
      vim.languages.python = {
        enable = true;
        format.enable = true;
        lsp.enable = true;
        extraDiagnostics.enable = true;
      };
    };
  };
}
