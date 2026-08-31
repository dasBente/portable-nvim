{
  flake.nixosModules.lang-c = {
    config.vim.languages.clang = {
      enable = true;
      cHeader = true;
      dap.enable = true;
      lsp.enable = true;
      extraDiagnostics.enable = true;
      format.enable = true;
      treesitter.enable = true;
    };
  };
}
