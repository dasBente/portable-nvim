{self, ...}: {
  perSystem = {pkgs, ...}: {
    packages.renpy = self.lib.mkNeovim {
      inherit pkgs;
      modules = [
        self.nvfModules.shared-opts
        {
          config.languages = {
            python.enable = true;
            renpy.enable = true;
          };
        }
      ];
    };
  };
}
