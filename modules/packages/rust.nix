{
  self,
  inputs,
  ...
}: {
  perSystem = {pkgs, ...}: {
    packages.rust =
      (inputs.nvf.lib.neovimConfiguration {
        inherit pkgs;
        modules = with self.nvfModules; [
          shared-opts
          lang-rust
        ];
      }).neovim;
  };
}
