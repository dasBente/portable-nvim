{
  self,
  inputs,
  ...
}: {
  perSystem = {pkgs, ...}: {
    packages.renpy =
      (inputs.nvf.lib.neovimConfiguration {
        inherit pkgs;
        modules = with self.nvfModules; [
          shared-opts
          lang-python
          lang-renpy
        ];
      }).neovim;
  };
}
