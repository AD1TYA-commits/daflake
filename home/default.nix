{ ... }:

{
  imports = [
    ./programs/terminal.nix
    ./niri.nix
  ];

  home.username = "aditya";
  home.homeDirectory = "/home/aditya";
  home.stateVersion = "26.05";
}
