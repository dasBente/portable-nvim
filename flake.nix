{
  description = "A collection of pre-configured neovim environments.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nvf.url = "github:NotAShelf/nvf";
  };

  outputs = {nixpkgs, ...} @ inputs: 
  let
    system = "x86_64-linux";

    baseConfig = mod: (inputs.nvf.lib.neovimConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      modules = [mod];
    }).neovim;

    config = mod: baseConfig mod // {
      meta = (baseConfig mod.meta or {}) // {
        license = nixpkgs.lib.licenses.mit;
        platforms = [system];
      };
    };
  in
  {
    packages."${system}" = {
      default = config ./packages/default.nix;
      web = config ./packages/web.nix;
    };
  };
}
