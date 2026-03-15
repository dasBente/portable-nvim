{
  self,
  inputs,
  ...
}: {
  perSystem = {pkgs, ...}: {
    packages.qml =
      (inputs.nvf.lib.neovimConfiguration {
        inherit pkgs;
        modules = with self.nixosModules; [
          shared-opts
          lang-qml
        ];
      }).neovim;
  };
}
