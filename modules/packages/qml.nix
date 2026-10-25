{self, ...}: {
  perSystem = {pkgs, ...}: {
    packages.qml = self.lib.mkNeovim {
      inherit pkgs;
      modules = [
        self.nvfModules.shared-opts
        {config.languages.qml.enable = true;}
      ];
    };
  };
}
