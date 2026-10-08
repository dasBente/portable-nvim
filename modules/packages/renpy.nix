{self, ...}: {
  perSystem = {pkgs, ...}: {
    packages.renpy = self.lib.mkNeovim {
      inherit pkgs;
      modules = with self.nvfModules; [
        shared-opts
        lang-python
        lang-renpy
      ];
    };
  };
}
