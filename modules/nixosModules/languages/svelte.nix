{
  flake.nixosModules.lang-svelte = {
    config = {
      vim.languages.svelte = {
        enable = true;
        format.enable = true;
        lsp.enable = true;
        treesitter.enable = true;
        extraDiagnostics.enable = true;
      };
    };
  };
}
