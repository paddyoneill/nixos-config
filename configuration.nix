{
  config,
  inputs,
  lib,
  pkgs,
  ...
}:

{
  imports =
    [
      ./hardware-configuration.nix
      inputs.home-manager.nixosModules.home-manager
    ];

  nix.settings.experimental-features = [
    "flakes"
    "nix-command"
  ];

  boot.loader.systemd-boot.enable = true;
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

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    useGlobalPkgs = true;
    useUserPackages = true;
    users.paddy = ./home.nix;
  };

  services.displayManager.ly.enable = true;

  programs.hyprland.enable = true;

  environment.systemPackages = with pkgs; [
    git
    kdePackages.dolphin
    kitty
    nushell
    vim
    wofi
  ];

  system.stateVersion = "25.05";
}
