{
  description = "A collection of pre-configured neovim environments.";

  outputs = {nixpkgs, ...} @ inputs: {
    packages.x86_64-linux.default =
      (inputs.nvf.lib.neovimConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        modules = [
          ./packages/default.nix
        ];
      })
      .neovim;
  };

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nvf.url = "github:NotAShelf/nvf";
  };
}
