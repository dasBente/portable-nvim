{
  self,
  inputs,
  ...
}: {
  perSystem = {pkgs, ...}: {
    packages.qml =
      (inputs.nvf.lib.neovimConfiguration {
        inherit pkgs;
        modules = with self.nvfModules; [
          shared-opts
          lang-qml
        ];
      }).neovim;
  };
}
