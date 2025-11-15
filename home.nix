{
  lib,
  pkgs,
  ...
}:
let
  mkTuple = lib.gvariant.mkTuple;
in
{
  home.packages = with pkgs; [
    nerd-fonts.hack
    delve
    gcc14
    go
    helm
    helm-docs
    kubectl
    k9s
  ];

  dconf = {
    enable = true;
    settings = {
      "org/gnome/desktop/input-sources" = {
        sources = [(mkTuple ["xkb" "gb"])];
      };
    };
  };

  programs.firefox.enable = true;

  programs.keepassxc.enable = true;

  home.stateVersion = "25.05";

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

  programs.emacs = {
    enable = true;
    package = pkgs.emacs;
  };

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
      font.size = 14;

      window.blur = true;
      window.opacity = 0.8;
      window.padding = {
        x = 10;
        y = 10;
      };
    };
  };
}
