{
  flake.nixosModules.lang-rust = {
    config = {
      vim.languages.rust = {
        enable = true;
        format.enable = true;
        extensions.crates-nvim.enable = true;
        lsp.enable = true;
        treesitter.enable = true;
      };
      vim.lsp.servers.rust_analyzer.settings."rust-analyzer" = {
        cargo.allFeatures = true;
        checkOnSave = true;
        procMacro.enable = true;
      };
    };
  };
}
