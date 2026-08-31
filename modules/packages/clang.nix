{
  self,
  inputs,
  ...
}: {
  perSystem = {pkgs, ...}: {
    packages.clang =
      (inputs.nvf.lib.neovimConfiguration {
        inherit pkgs;
        modules = with self.nixosModules; [
          shared-opts
          lang-c
        ];
      }).neovim;
  };
}
