{...}: {
  imports = [
    ../modules/telescope.nix
    ./common.nix
  ];

  config.vim = {
    theme = {
      enable = true;
      name = "onedark";
    };

    languages = {
      nix.enable = true;
      markdown.enable = true;
      lua.enable = true;
      bash.enable = true;
    };
  };
}
