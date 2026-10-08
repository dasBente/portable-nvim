{self, ...}: {
  perSystem = {pkgs, ...}: {
    packages.rust = self.lib.mkNeovim {
      inherit pkgs;
      modules = with self.nvfModules; [
        shared-opts
        lang-rust
      ];
    };
  };
}
