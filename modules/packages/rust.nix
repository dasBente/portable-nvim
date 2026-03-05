{
  self,
  inputs,
  ...
}: {
  perSystem = {pkgs, ...}: {
    packages.default = inputs.nvf.lib.neovimConfiguration {
      inherit pkgs;
      modules = [
        self.nixosModules.shared-opts
        self.nixosModules.languages
        {config = {lang.rust.enable = true;};}
      ];
    };
  };
}
