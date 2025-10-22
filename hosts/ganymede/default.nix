{
  inputs,
  pkgs,
  ...
}:

{
  imports =
    [
      ./hardware-configuration.nix
      ../../modules/nixos
    ];

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };

  nix.settings = {
    auto-optimise-store = true;
    experimental-features = [
      "flakes"
      "nix-command"
    ];
  };

  boot.loader.systemd-boot = {
    enable = true;
    configurationLimit = 3;
  };

  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "ganymede";
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/London";

  i18n.defaultLocale = "en_GB.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "uk";
  };

  users.users.paddy = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    shell = pkgs.nushell;
  };

  home-manager.users.paddy = ../../users/paddy.nix;

  services.displayManager.ly.enable = true;

  programs.hyprland.enable = true;

  environment.systemPackages = with pkgs; [
    git
    kdePackages.dolphin
    nushell
    vim
    waybar
    wofi
  ];

  system.stateVersion = "25.05";
}
