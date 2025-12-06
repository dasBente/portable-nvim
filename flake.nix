{
  description = "A collection of pre-configured neovim environments.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nvf.url = "github:NotAShelf/nvf";

    renpy-syntax-nvim = {
      url = "github:inzoiniac/renpy-syntax.nvim";
      flake = false;
    };

    renpy-treesitter = {
      url = "github:therealjasonkenney/tree-sitter-renpy";
      flake = false;
    };
  };

  outputs = {nixpkgs, ...} @ inputs: let
    system = "x86_64-linux";

    config = mod:
      (inputs.nvf.lib.neovimConfiguration {
        pkgs = nixpkgs.legacyPackages.${system};
        modules = [mod];
      }).neovim;
  in {
    packages."${system}" = {
      default = config ./packages/default.nix;
      web = config ./packages/web.nix;
      rust = config ./packages/rust.nix;
      renpy = config ./packages/rust.nix;
    };
  };
}
