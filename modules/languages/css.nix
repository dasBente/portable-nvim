{
  lib,
  config,
  ...
}: {
  options.lang.css.enable = lib.mkEnableOption "Dependencies for a CSS editing environment";

  config = lib.mkIf config.lang.css.enable {
    vim.languages.css = {
      enable = true;
      format.enable = true;
      treesitter.enable = true;
      lsp.enable = true;
    };
  };
}
