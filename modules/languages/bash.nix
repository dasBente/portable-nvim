{
  lib,
  config,
  ...
}: {
  options.lang.bash.enable = lib.mkEnableOption "Defaults for bash editing environment";

  config = lib.mkIf config.lang.bash.enable {
    vim.languages.bash = {
      enable = true;
      extraDiagnostics.enable = true;
      format.enable = true;
      lsp.enable = true;
      treesitter.enable = true;
    };
  };
}
