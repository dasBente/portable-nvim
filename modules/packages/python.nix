{self, ...}: {
  perSystem = {pkgs, ...}: {
    packages.python = self.lib.mkNeovim {
      inherit pkgs;
      modules = [
        self.nvfModules.shared-opts
        {config.languages.python.enable = true;}
      ];
    };
  };
}
