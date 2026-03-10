{
  self,
  inputs,
  ...
}: {
  perSystem = {pkgs, ...}: {
    packages.qml =
      (inputs.nvf.lib.neovimConfiguration {
        inherit pkgs;
        modules = [
          self.nixosModules.shared-opts
          self.nixosModules.qml
        ];
      }).neovim;
  };
}
