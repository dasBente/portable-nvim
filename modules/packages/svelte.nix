{
  self,
  inputs,
  ...
}: {
  perSystem = {pkgs, ...}: {
    packages.svelte =
      (inputs.nvf.lib.neovimConfiguration {
        inherit pkgs;
        modules = with self.nixosModules; [
          shared-opts
          lang-html
          lang-css
          lang-typescript
          lang-svelte
        ];
      }).neovim;
  };
}
