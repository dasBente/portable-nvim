{
  self,
  inputs,
  ...
}: {
  perSystem = {pkgs, ...}: {
    packages.renpy =
      (inputs.nvf.lib.neovimConfiguration {
        inherit pkgs;
        modules = with self.nixosModules; [
          shared-opts
          lang-renpy
        ];
      }).neovim;
  };
}
