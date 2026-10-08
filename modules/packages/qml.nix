{self, ...}: {
  perSystem = {pkgs, ...}: {
    packages.qml = self.lib.mkNeovim {
      inherit pkgs;
      modules = with self.nvfModules; [
        shared-opts
        lang-qml
      ];
    };
  };
}
