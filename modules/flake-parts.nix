{
  inputs,
  lib,
  ...
}: {
  config.systems = [
    "aarch64-darwin"
    "aarch64-linux"
    "x86_64-darwin"
    "x86_64-linux"
  ];

  options.flake = inputs.flake-parts.lib.mkSubmoduleOptions {
    nvfModules = lib.mkOption {
      type = lib.types.lazyAttrsOf lib.types.raw;
      default = {};
    };

    lib = lib.mkOption {
      type = lib.types.lazyAttrsOf lib.types.raw;
      default = {};
    };
  };
}
