{
  description = "A collection of pre-configured neovim environments.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nvf.url = "github:NotAShelf/nvf";
#    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, nvf }:
  {
    packages.x86_64-linux.default = (nvf.lib.neovimConfiguration {
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      modules = [ ./packages/default.nix ];
    }).neovim;
  };
}
