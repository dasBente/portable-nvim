{
  self,
  inputs,
  ...
}: {
  perSystem = {pkgs, ...}: {
    packages.clang =
      (inputs.nvf.lib.neovimConfiguration {
        inherit pkgs;
        modules = with self.nvfModules; [
          shared-opts
          lang-c
        ];
      }).neovim;
  };
}
