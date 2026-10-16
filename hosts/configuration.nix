{ ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../modules/desktop.nix
    ../modules/packages.nix
    ../modules/nix-ld.nix
    ../modules/users.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.networkmanager.enable = true;

  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  programs.niri.enable = true;
  services.displayManager.ly.enable = true;
 
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  system.stateVersion = "26.05";
}
