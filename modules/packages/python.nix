{self, ...}: {
  perSystem = {pkgs, ...}: {
    packages.python = self.lib.mkNeovim {
      inherit pkgs;
      modules = with self.nvfModules; [
        shared-opts
        lang-python
      ];
    };
  };
}
