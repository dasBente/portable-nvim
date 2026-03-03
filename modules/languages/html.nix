{
  lib,
  config,
  ...
}: {
  options.lang.html.enable = lib.mkEnableOption "Defaults for HTML editing environment";

  config = lib.mkIf config.lang.html.enable {
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
}
