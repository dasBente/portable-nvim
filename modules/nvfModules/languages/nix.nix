{lib, ...}: {
  flake.nvfModules.languages = {config, ...}: {
    options.languages.nix.enable = lib.mkEnableOption "Enable nix language tools";

    config = lib.mkIf config.languages.nix.enable {
      vim.languages.nix = {
        enable = true;
        extraDiagnostics.enable = true;
        lsp.enable = true;
        treesitter.enable = true;
      };
    };
  };
}
