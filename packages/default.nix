{...}: {
  config.vim = {
    viAlias = true;
    vimAlias = true;

    spellcheck.enable = true;

    telescope.enable = true;
    autocomplete.nvim-cmp.enable = true;

    theme = {
      enable = true;
      name = "onedark";
    };

    lsp = {
      enable = true;
      formatOnSave = true;
    };

    languages = {
      enableFormat = true;
      enableTreesitter = true;

      # add languages for everyday use
      nix.enable = true;
      markdown.enable = true;
      lua.enable = true;
      bash.enable = true;
    };

    visuals = {
      nvim-web-devicons.enable = true;
      nvim-cursorline.enable = true;
      indent-blankline = {
        enable = true;
      };
    };

    utility.oil-nvim = {
      enable = true;
      setupOpts = {
        default_file_explorer = true;
        columns = ["icon"];
        skip_confirm_for_simple_edits = true;
      };
    };

    treesitter.context.enable = true;

    binds = {
      whichKey.enable = true;
      cheatsheet.enable = true;
    };

    git = {
      enable = true;
      gitsigns.enable = true;
    };

    dashboard.dashboard-nvim = {
      enable = true;
      setupOpts.scope.enabled = true;
    };

    comments.comment-nvim.enable = true;

    keymaps = [
      {
        key = "-";
        mode = "n";
        action = "<cmd>Oil<cr>";
        desc = "Open parent directory";
      }
      {
        key = "J";
        mode = "v";
        action = ":m '>+1<cr>gv=gv";
      }
      {
        key = "K";
        mode = "v";
        action = ":m '<-2<cr>gv=gv";
      }
      {
        key = "J";
        mode = "n";
        action = "mzJ`z";
      }
      {
        key = "n";
        mode = "n";
        action = "<c-d>zz";
      }
      {
        key = "N";
        mode = "n";
        action = "<c-u>zz";
      }
      {
        key = "<c-f>";
        mode = "n";
        action = "<cmd>silent !tmux neww tmux-sessionizer<cr>";
      }
      {
        key = "<leader>s";
        mode = "n";
        action = ":%s/\<<c-r><c-w>\>/<c-r><c-w>/gI<Left><Left><Left>";
        desc = "Search and Replace hovered";
      }
    ];
  };
}
