{
  self,
  inputs,
  ...
}: {
  perSystem = {pkgs, ...}: {
    packages.rust =
      (inputs.nvf.lib.neovimConfiguration {
        inherit pkgs;
        modules = with self.nixosModules; [
          shared-opts
          lang-rust
        ];
      }).neovim;
  };
}
