{self, ...}: {
  perSystem = {pkgs, ...}: {
    packages.svelte = self.lib.mkNeovim {
      inherit pkgs;
      modules = with self.nvfModules; [
        shared-opts
        lang-html
        lang-css
        lang-typescript
        lang-svelte
      ];
    };
  };
}
