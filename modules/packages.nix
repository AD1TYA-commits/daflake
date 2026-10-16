 { pkgs, inputs, ... }:

let
  helium = pkgs.callPackage ../packages/helium.nix {};
in
{
  environment.systemPackages = with pkgs; [
    waybar
    inputs.spotifast.packages."${pkgs.stdenv.hostPlatform.system}".default
    # Niri                  
    quickshell
    mako
    fuzzel
    thunar
    awww
    wl-clipboard
    brightnessctl
    playerctl
    nerd-fonts.iosevka

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
