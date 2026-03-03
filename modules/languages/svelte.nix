{
  lib,
  config,
  ...
}: {
  options.lang.svelte.enable = lib.mkEnableOption "Dependencies for a svelte dev environment";

  config = lib.mkIf config.lang.web.enable {
    vim.languages.svelte = {
      enable = true;
      format.enable = true;
      lsp.enable = true;
      treesitter.enable = true;
      extraDiagnostics.enable = true;
    };
  };
}
