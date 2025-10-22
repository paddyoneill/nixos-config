{
  pkgs,
  ...
}:

{
  imports = [
    ../modules/home-manager/alacritty.nix
    ../modules/home-manager/devel.nix
    ../modules/home-manager/git.nix
    ../modules/home-manager/k8s.nix
    ../modules/home-manager/nixvim.nix
  ];

  home.packages = with pkgs; [
    nerd-fonts.hack
  ];

  programs.firefox.enable = true;

  programs.keepassxc.enable = true;

  home.stateVersion = "25.05"; }
