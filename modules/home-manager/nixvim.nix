{
  inputs,
  pkgs,
  ...
}:

{
  imports = [
    inputs.nixvim.homeModules.nixvim
  ];

  programs.nixvim = {
    enable = true;

    opts = {
      number = true;
      relativenumber = true;

      softtabstop = -1;
      shiftwidth = 0;
      tabstop = 2;
      expandtab = true;

      autoindent = true;

      signcolumn = "yes";

      winborder = "rounded";
    };

    globals.mapleader = "<space>";

    colorschemes.gruvbox.enable = true;

    plugins.lualine.enable = true;

    plugins.treesitter = {
      enable = true;

      settings = {
        indent.enable = true;
        highlight.enable = true;
      };

      grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;
    };


    plugins.blink-cmp = {
      enable = true;
      setupLspCapabilities = true;

      settings = {
        keymap = {
          preset = "default";
        };
        appearance = {
          nerd_font_variant = "mono";
          use_nvim_cmp_as_default = true;
        };
        signature = {
          enabled = true;
        };
      };
    };

    plugins.lsp = {
      enable = true;

      servers = {
        gopls.enable = true;
        lua_ls.enable = true;
        nixd.enable = true;
      };
    };

    extraConfigLua = ''
      vim.cmd [[
      highlight Normal guibg=none ctermbg=none
        highlight NonText guibg=none ctermbg=none
      ]]
      '';
  };

  programs.nushell = {
    enable = true;
    shellAliases = {
      "vi" = "nvim";
      "vim" = "nvim";
    };
  };
}
