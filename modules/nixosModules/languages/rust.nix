{
  flake.nixosModules.lang-rust = {
    config = {
      vim.languages.rust = {
        enable = true;
        format.enable = true;
        extensions.crates-nvim.enable = true;
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
