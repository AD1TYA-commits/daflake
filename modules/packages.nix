{ pkgs, ... }:

let
  helium = pkgs.callPackage ../packages/helium.nix {};
in
{
  environment.systemPackages = with pkgs; [
    awww
    htop
    quickshell
    librewolf
    helium
    mako
    thunar
    playerctl
    wl-clipboard
    brightnessctl
    fastfetch
    fzf
    bat
    lazygit
    eza
    starship
    nerd-fonts.iosevka
    fuzzel
    git
    legcord
    gh
    tree
    neovim
  ];
}
