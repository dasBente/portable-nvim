{
  inputs,
  pkgs,
  ...
}: {
  imports = [./common.nix];
  vim = {
    languages = {
      rust = {
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
      bash.enable = true;
    };

    treesitter = {
      autotagHtml = true;
      highlight.enable = true;
    };
  };
}
