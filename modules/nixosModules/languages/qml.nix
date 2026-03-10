{
  flake.nixosModules.lang-qml = {
    config = {
      vim.languages.qml = {
        enable = true;
        format.enable = true;
        treesitter.enable = true;
        lsp.enable = true;
      };
    };
  };
}
