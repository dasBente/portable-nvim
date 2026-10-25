{self, ...}: {
  perSystem = {pkgs, ...}: {
    packages.rust = self.lib.mkNeovim {
      inherit pkgs;
      modules = [
        self.nvfModules.shared-opts
        {config.languages.rust.enable = true;}
      ];
    };
  };
}
