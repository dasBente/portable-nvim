{
  lib,
  config,
  ...
}: {
  options.lang.typescript.enable = lib.mkEnableOption "Dependencies for a typescript dev environment";

  config = lib.mkIf config.lang.typescript.enable {
    vim.languages.ts = {
      enable = true;
      format.enable = true;
      treesitter.enable = true;
      extraDiagnostics.enable = true;
      lsp.enable = true;

      extensions = {
        ts-error-translator.enable = true;
      };
    };
  };
}
