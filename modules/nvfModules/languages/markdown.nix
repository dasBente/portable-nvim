{lib, ...}: {
  flake.nvfModules.languages = {config, ...}: {
    options.languages.markdown.enable = lib.mkEnableOption "Enable markdown language tools";

    config = lib.mkIf config.languages.markdown.enable {
      vim.languages.markdown = {
        enable = true;
        extraDiagnostics.enable = true;
        format.enable = true;
        lsp.enable = true;
        treesitter.enable = true;
      };
    };
  };
}
