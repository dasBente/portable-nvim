{self, ...}: {
  perSystem = {pkgs, ...}: {
    packages.svelte = self.lib.mkNeovim {
      inherit pkgs;
      modules = [
        self.nvfModules.shared-opts
        {
          config.languages = {
            html.enable = true;
            css.enable = true;
            typescript.enable = true;
            svelte.enable = true;
          };
        }
      ];
    };
  };
}
