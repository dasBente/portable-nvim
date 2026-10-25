{lib, ...}: {
  flake.nvfModules.languages = {config, ...}: {
    options.languages.svelte.enable = lib.mkEnableOption "Enable svelte language tools";

    config = lib.mkIf config.languages.svelte.enable {
      vim.languages.svelte = {
        enable = true;
        format.enable = true;
        lsp.enable = true;
        treesitter.enable = true;
        extraDiagnostics.enable = true;
      };
    };
  };
}
