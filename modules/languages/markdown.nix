{
  flake.nixosModules.languages = {
    lib,
    config,
    ...
  }: {
    options.lang.markdown.enable = lib.mkEnableOption "Enables markdown editing support";

    config = lib.mkIf config.lang.markdown.enable {
      vim.languages.markdown = {
        enable = true;
        extraDiagnostics.enable = true;
        format.enable = true;
        lsp.enable = true;
        lsp.treesitter.enable = true;
      };
    };
  };
}
