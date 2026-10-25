{self, ...}: {
  perSystem = {pkgs, ...}: {
    packages.clang = self.lib.mkNeovim {
      inherit pkgs;
      modules = [
        self.nvfModules.shared-opts
        {config.languages.clang.enable = true;}
      ];
    };
  };
}
