{
  self,
  inputs,
  ...
}: {
  perSystem = {pkgs, ...}: {
    packages.default =
      (inputs.nvf.lib.neovimConfiguration {
        inherit pkgs;
        modules = [
          self.nvfModules.shared-opts
        ];
      }).neovim;
  };
}
