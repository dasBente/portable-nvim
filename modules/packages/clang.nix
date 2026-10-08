{self, ...}: {
  perSystem = {pkgs, ...}: {
    packages.clang = self.lib.mkNeovim {
      inherit pkgs;
      modules = with self.nvfModules; [
        shared-opts
        lang-c
      ];
    };
  };
}
