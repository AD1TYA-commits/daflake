{ pkgs, ...}:
 
let helium = pkgs.stdenvNoCC.mkDerivation {
	pname = "helium";
	version = "0.19.2.1";
	src = pkgs.fetchurl {
		url = "https://github.com/imputnet/helium-linux/releases/download/0.19.2.1/helium-0.19.2.1-x86_64_linux.tar.xz";
		hash = "sha256-cHzzGeOj0qoGHKFddUh3vRi4sokghzjIKfywhzvH7Ns=";
	};
	nativeBuildInputs = [pkgs.xz];
	installPhase = ''
		mkdir -p $out/opt/helium $out/bin
	  	cp -r . $out/opt/helium/
		ln -s $out/opt/helium/helium $out/bin/helium '';
	};
in
{
  environment.systemPackages = with pkgs;
        [
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
