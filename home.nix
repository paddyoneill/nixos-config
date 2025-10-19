{
  inputs,
  ...
}:

{
  imports = [
    inputs.nixvim.homeModules.nixvim
  ];

  programs.alacritty = {
    enable = true;
    settings = {
      window.blur = true;
      window.opacity = 0.9;
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
  };

  programs.nushell = {
    enable = true;
    shellAliases = {
      "vim" = "nvim";
    };
  };

  home.stateVersion = "25.05";
}
