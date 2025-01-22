{
  description = "A collection of pre-configured neovim environments.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nvf.url = "github:NotAShelf/nvf";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, nvf }:
  flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      packages.${system} = {
        default = (nvf.lib.neovimConfiguration {
          pkgs = pkgs;
          modules = [ ./packages/default.nix ];
        }).neovim;
      };
    }
  );
}
