{lib, ...}: {
  flake.nvfModules.languages = {config, ...}: {
    options.languages.typescript.enable = lib.mkEnableOption "Enable typescript language tools";

    config = lib.mkIf config.languages.typescript.enable {
      vim.languages.typescript = {
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
  };
}
