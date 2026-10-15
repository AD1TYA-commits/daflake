 { pkgs, ... }:

let
  helium = pkgs.callPackage ../packages/helium.nix {};
in
{
  environment.systemPackages = with pkgs; [
    # Niri                  
    quickshell
    mako
    fuzzel
    thunar
    awww
    wl-clipboard
    brightnessctl
    playerctl

    # Larping                 
    librewolf
    helium
    htop
    fastfetch
    fzf
    bat
    lazygit
    eza
    starship
    nerd-fonts.iosevka
    git
    legcord
    gh
    tree
    neovim
  ];
}
