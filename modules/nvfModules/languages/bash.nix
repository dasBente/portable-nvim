{lib, ...}: {
  flake.nvfModules.languages = {config, ...}: {
    options.languages.bash.enable = lib.mkEnableOption "Enable bash language tools";

    config = lib.mkIf config.languages.bash.enable {
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
