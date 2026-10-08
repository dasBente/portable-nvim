{self, ...}: {
  perSystem = {pkgs, ...}: {
    packages.default = self.lib.mkNeovim {
      inherit pkgs;
      modules = [
        self.nvfModules.shared-opts
      ];
    };
  };
}
