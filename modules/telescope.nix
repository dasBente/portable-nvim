{
  lib,
  config,
  pkgs,
  ...
}: {
  options.telescope.enable = lib.mkEnableOption "Telescope fuzzy finder";

  config = lib.mkIf config.telescope.enable {
    vim.telescope = {
      enable = true;
      extensions = [
        {
          name = "fzf";
          packages = [pkgs.vimPlugins.telescope-fzf-native-nvim];
          setup = {fzf = {fuzzy = true;};};
        }

        {
          name = "undo";
          packages = [pkgs.vimPlugins.telescope-undo-nvim];
          setup = {undo = {};};
        }

        # {
        #   name = "git-conflicts";
        #   packages = [pkgs.vimPlugins.telescope-git-conflicts-nvim];
        #   setup = {git-conflicts = {};};
        # }
      ];

      mappings = {
        findFiles = "<leader>ff";
        liveGrep = "<leader>fg";
        findProjects = "<leader>fp";
        open = "<leader>ft";
        resume = "<leader>fr";
        treesitter = "<leader>fs";

        # version control
        gitBranches = "<leader>fvb";
        gitBufferCommits = "<leader>fvcb";
        gitCommits = "<leader>fvcc";
        gitStash = "<leader>fvp";
        gitStatus = "<leader>fvs";

        # LSP
        lspDefinitions = "<leader>flD";
        lspDocumentSymbols = "<leader>flsb";
        lspImplementations = "<leader>fli";
        lspReferences = "<leader>flr";
        lspTypeDefinitions = "<leader>flt";
        lspWorkspaceSymbols = "<leader>flsw";
      };

      setupOpts.defaults = {
        color_devicons = true;
        find_command = "\${pkgs.fd}/bin/fd";
        find_files.find_command = "\${pkgs.fd}/bin/fd --files";
      };
    };

    vim.keymaps = [
      {
        mode = "n";
        key = "<leader>fu";
        action = "<CMD>Telescope undo<CR>";
        desc = "Search UNDOs";
      }
      {
        mode = "n";
        key = "<leader>fvx";
        action = "<CMD>Telescope conflicts<CR>";
        desc = "Merge Conflicts";
      }
      {
        mode = "n";
        key = "<leader>fvd";
        action = "<CMD>Telescope git_diffs diff_commits<CR>";
        desc = "Diff";
      }
    ];
  };
}
