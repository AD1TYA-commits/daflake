{ ... }:

{
  xdg.configFile."niri/config.kdl".text = ''
    window-rule {
      geometry-corner-radius 12
      clip-to-geometry true
    }

    layer-rule {
      match namespace="^launcher$"
      geometry-corner-radius 12
    }
  '';
}
