{inputs, ...}: {
  flake.lib.mkNeovim = {
    pkgs,
    modules ? [],
  }:
    (inputs.nvf.lib.neovimConfiguration {
      inherit pkgs modules;
    }).neovim;
}
