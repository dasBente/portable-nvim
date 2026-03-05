{
  flake.nixosModules.lang-bash = {
    config = {
      vim.languages.bash = {
        enable = true;
        extraDiagnostics.enable = true;
        format.enable = true;
        lsp.enable = true;
        treesitter.enable = true;
      };
    };
  };
}
