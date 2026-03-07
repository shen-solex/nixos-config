{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.nixvim.homeModules.nixvim
  ];

  programs.nixvim = {
    enable = true;

    plugins = {
      mini = {
        enable = true;
        autoLoad = true;
        mockDevIcons = true;
        modules = {
          basics = {
            
          };
          icons = {
            
          };
          animate = {
            
          };
          comment = {
            
          };
          pairs = {
            
          };
          surround = {
            
          };
        };
      };
      blink-cmp = {
        enable = true;
      };
      luasnip = {
        enable = true;
      };
      friendly-snippets = {
        enable = true;
      };
      lualine = {
        enable = true;
        settings = {
          winbar = {
            lualine_a = "navic";
          };
        };
      };
      navic = {
        enable = true;
      };
      navbuddy = {
        enable = true;
      };
      fzf-lua = {
        enable = true;
        keymaps = {
          "<C-\\>" = "buffers";
          "<C-k>" = "builtin";
          "<C-p>" = "files";
          "<C-l>" = "live_grep";
          "<C-g>" = "grep_project";
          "<F1>" = "help_tags";
        };
      };
      oil = {
        enable = true;
        autoLoad = true;
      };
      lazygit = {
        enable = true;
        # lazyLoad = {
        #   settings = {
        #     keys = [
        #       {
        #         key = "<leader>lg";
        #         action = "LazyGit";
        #         options.desc = "LazyGit";
        #       }
        #     ];
        #   };
        # };
      };
      lsp-format.enable = true;
      none-ls = {
        enable = true;
        sources = {
          formatting = {
            nixfmt.enable = true;
          };
        };
      };
      java = {
        enable = true;
        lazyLoad = {
          settings = {
            ft = "java";
          };
        };
      };
    };
    keymaps = [
      {
        key = "-";
        action = "";
        options.desc = "Open parent directory";
        options.mode = "n";
      }
    ];
    lsp = {
      servers = {
        nixd.enable = true;
      };
    };
  };
}
