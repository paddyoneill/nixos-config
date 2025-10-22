{
  pkgs,
  ...
}:

{
  imports = [
    ../modules/home-manager/alacritty.nix
    ../modules/home-manager/nixvim.nix
    ../modules/home-manager/git.nix
  ];

  home.packages = with pkgs; [
    go
    nerd-fonts.hack
    ripgrep
  ];

  programs.firefox.enable = true;

  programs.keepassxc.enable = true;

  home.stateVersion = "25.05"; }
