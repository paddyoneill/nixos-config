{
  inputs,
  pkgs,
  ...
}:

{
  imports = [
    inputs.nixvim.homeModules.nixvim
  ];

  home.packages = with pkgs; [
    nerd-fonts.hack
  ];

  programs.alacritty = {
    enable = true;
    settings = {
      colors.primary = {
        background = "#282828";
        foreground = "#ebdbb2";
      };

      colors.normal = {
        black = "#282828";
        red = "#cc241d";
        green = "#98971a";
        yellow = "#d79921";
        blue = "#458588";
        magenta = "#b16286";
        cyan = "#689d6a";
        white = "#a89984";
      };

      colors.bright = {
        black = "#928374";
        red = "#fb4934";
        green = "#b8bb26";
        yellow = "#fabd2f";
        blue = "#83a598";
        magenta = "#d3869b";
        cyan = "#8ec07c";
        white = "#ebdbb2";
      };

      font.bold = {
        family = "Hack Nerd Font Mono";
	style = "Bold";
      };
      font.bold_italic = {
        family = "Hack Nerd Font Mono";
        style = "Bold Italic";
      };
      font.italic = {
        family = "Hack Nerd Font Mono";
        style = "Italic";
      };
      font.normal = {
        family = "Hack Nerd Font Mono";
        style = "Regular";
      };
      font.size = 10;

      window.blur = true;
      window.opacity = 0.8;
      window.padding = {
        x = 10;
	y = 10;
      };
    };
  };

  programs.firefox.enable = true;

  programs.git = {
    enable = true;
    extraConfig = {
      init = {
        defaultBranch = "main";
      };
    };
    userName = "Paddy O'Neill";
    userEmail = "paddy.oneill93@gmail.com";
  };

  programs.nixvim = {
    enable = true;

    colorschemes.gruvbox.enable = true;
    plugins.lualine.enable = true;

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

  home.stateVersion = "25.05";
}
