{
  flake.nixosModules.languages = {
    config,
    lib,
    ...
  }: {
    options.lang.rust = lib.mkEnableOption "Enable Rust language environment";

    config = lib.mkIf config.lang.rust.enable {
      vim.languages.rust = {
        enable = true;
        format.enable = true;
        extensions.crates-nvim.enable = true;
        extraDiagnostics.enable = true;
        lsp.enable = true;
        lsp.opts = ''
          ['rust-analyzer'] = {
              cargo = { allFeature = true },
              checkOnSave = true,
              procMacro = {
                  enable = true,
              }
          }
        '';
        treesitter.enable = true;
      };
    };
  };
}
