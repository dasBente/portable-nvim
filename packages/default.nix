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
      markdown.enable = true;
      lua.enable = true;
      bash.enable = true;
    };
  };
}
