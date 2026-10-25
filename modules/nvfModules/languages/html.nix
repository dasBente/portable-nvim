{lib, ...}: {
  flake.nvfModules.languages = {config, ...}: {
    options.languages.html.enable = lib.mkEnableOption "Enable HTML language tools";

    config = lib.mkIf config.languages.html.enable {
      vim.languages.html = {
        enable = true;
        format.enable = true;
        lsp.enable = true;
        extraDiagnostics.enable = true;

        treesitter.enable = true;
        treesitter.autotagHtml = true;
      };

      vim.treesitter.autotagHtml = true;
    };
  };
}
