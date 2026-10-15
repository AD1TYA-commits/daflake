{ pkgs, ... }:

{
  programs.nix-ld = {
    enable = true;

    libraries = with pkgs; [
      stdenv.cc.cc
      glib
      dbus
      nspr
      nss
      atk
      at-spi2-atk
      at-spi2-core
      gtk3
      gtk4
      pango
      cairo
      gdk-pixbuf
      fontconfig
      freetype
      libGL
      libgbm
      libdrm
      libxkbcommon
      libX11
      libXcomposite
      libXdamage
      libXext
      libXfixes
      libXrandr
      libXrender
      libxcb
      libXi
      libXcursor
      libXft
      libXScrnSaver
      libXtst
      libSM
      libICE
      alsa-lib
      cups
      expat
      zlib
      libuuid
      libxml2
      libxshmfence
      mesa
      wayland
      vulkan-loader
      systemd
      pipewire
      libva
      udev
    ];
  };
}
