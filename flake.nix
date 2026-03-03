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

  outputs = {...}: {
    nixosModules = import ./modules;
  };
}
