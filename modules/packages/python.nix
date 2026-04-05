{
  self,
  inputs,
  ...
}: {
  perSystem = {pkgs, ...}: {
    packages.python =
      (inputs.nvf.lib.neovimConfiguration {
        inherit pkgs;
        modules = with self.nixosModules; [
          shared-opts
          lang-python
        ];
      }).neovim;
  };
}
