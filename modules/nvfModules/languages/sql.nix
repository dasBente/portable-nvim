{lib, ...}: {
  flake.nvfModules.languages = {config, ...}: {
    options.languages.sql.enable = lib.mkEnableOption "Enable SQL language tools";

    config = lib.mkIf config.languages.sql.enable {
      vim.languages.sql = {
        enable = true;

        extraDiagnostics.enable = true;
        format.enable = true;
        lsp.enable = true;
        treesitter.enable = true;
      };
    };
  };
}
