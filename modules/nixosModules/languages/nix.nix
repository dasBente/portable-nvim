{
  flake.nixosModules.lang-nix = {
    config = {
      vim.languages.nix = {
        enable = true;
        extraDiagnostics.enable = true;
        lsp.enable = true;
        treesitter.enable = true;
      };
    };
  };
}
