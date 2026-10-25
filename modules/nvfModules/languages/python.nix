{lib, ...}: {
  flake.nvfModules.languages = {config, ...}: {
    options.languages.python.enable = lib.mkEnableOption "Enable python language tools";

    config = lib.mkIf config.languages.python.enable {
      vim.languages.python = {
        enable = true;
        format.enable = true;
        lsp.enable = true;
        extraDiagnostics.enable = true;
      };
    };
  };
}
