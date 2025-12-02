{...}: {
  imports = [./common.nix];
  vim = {
    languages = {
      rust = {
        enable = true;
        format.enable = true;
        crates.enable = true;
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
      bash.enable = true;
      nix.enable = true;
    };

    treesitter = {
      autotagHtml = true;
      highlight.enable = true;
    };
  };
}
