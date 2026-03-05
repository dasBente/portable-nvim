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
        {
          config = {
            lang.html.enable = true;
            lang.css.enable = true;
            lang.typescript.enable = true;
            lang.svelte.enable = true;
          };
        }
      ];
    };
  };
}
