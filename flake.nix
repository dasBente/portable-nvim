{
  description = "A collection of pre-configured neovim environments.";

  outputs = {nixpkgs, ...} @ inputs: 
  let
    system = "x86_64-linux";
  in
  {
    packages."${system}" = {
      default =
        (inputs.nvf.lib.neovimConfiguration {
          pkgs = nixpkgs.legacyPackages."${system}";
          modules = [
            ./packages/default.nix
          ];
        })
        .neovim;

      web =
        (inputs.nvf.lib.neovimConfiguration {
          pkgs = nixpkgs.legacyPackages."${system}";
          modules = [
            ./packages/web.nix
          ];
        })
        .neovim;
    };
  };

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nvf.url = "github:NotAShelf/nvf";
  };
}
