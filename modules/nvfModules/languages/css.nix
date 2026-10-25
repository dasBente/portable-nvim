{lib, ...}: {
  flake.nvfModules.languages = {config, ...}: {
    options.languages.css.enable = lib.mkEnableOption "Enable CSS language tools";

    config = lib.mkIf config.languages.css.enable {
      vim.languages.css = {
        enable = true;
        format.enable = true;
        treesitter.enable = true;
        lsp.enable = true;
      };
    };
  };
}
