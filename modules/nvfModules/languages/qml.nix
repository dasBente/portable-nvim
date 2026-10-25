{lib, ...}: {
  flake.nvfModules.languages = {config, ...}: {
    options.languages.qml.enable = lib.mkEnableOption "Enable QML language tools";

    config = lib.mkIf config.languages.qml.enable {
      vim.languages.qml = {
        enable = true;
        format.enable = true;
        treesitter.enable = true;
        lsp.enable = true;
      };
    };
  };
}
