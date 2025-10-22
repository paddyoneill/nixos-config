_:

{
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
