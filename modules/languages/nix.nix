{
  lib,
  config,
  ...
}: {
  options.lang.nix.enable = lib.mkEnableOption "Enables nix language support";

  config = lib.mkIf config.lang.nix.enable {
    vim.languages.nix = {
      enable = true;
      lsp.enable = true;
      treesitter.enable = true;
    };
  };
}
