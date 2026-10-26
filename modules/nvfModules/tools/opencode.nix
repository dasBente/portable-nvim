{lib, inputs, ...}: {
  flake.nvfModules.tools = {
    pkgs,
    config,
    ...
  }: {
    options.tools.opencode.enable = lib.mkEnableOption "Enable Opencode integration";

    config = lib.mkIf config.tools.opencode.enable {
      vim.lazy.plugins."opencode.nvim" = {
        package = pkgs.vimUtils.buildVimPlugin {
          pname = "opencode.nvim";
          version = "unstable-2026-10-24";
          src = inputs.opencode-nvim;
        };

        lazy = true;
        keys = [
          {
            mode = ["n" "x"];
            key = "<C-a>";
            action = "function() require('opencode').ask('@this: ') end";
            lua = true;
            desc = "Ask OpenCode…";
          }
          {
            mode = ["n" "x"];
            key = "<C-x>";
            action = "function() require('opencode').select() end";
            lua = true;
            desc = "Select OpenCode…";
          }
          {
            mode = ["n" "x"];
            key = "go";
            action = "function() return require('opencode').operator('@this') end";
            lua = true;
            desc = "Send range to OpenCode";
            expr = true;
          }
          {
            mode = "n";
            key = "goo";
            action = "function() return require('opencode').operator('@this') .. '_' end";
            lua = true;
            desc = "Send line to OpenCode";
            expr = true;
          }
        ];
      };
    };
  };
}
