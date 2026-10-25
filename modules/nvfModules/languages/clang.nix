{lib, ...}: {
  flake.nvfModules.languages = {config, ...}: {
    options.languages.clang.enable = lib.mkEnableOption "Enable C/C++ language tools";

    config = lib.mkIf config.languages.clang.enable {
      vim.languages.clang = {
        enable = true;
        cHeader = true;
        dap.enable = true;
        lsp.enable = true;
        extraDiagnostics.enable = true;
        format.enable = true;
        treesitter.enable = true;
      };
    };
  };
}
