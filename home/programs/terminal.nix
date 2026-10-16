{ ... }:

{
  programs.kitty = {
    enable = true;

    font = {
      name = "Iosevka Nerd Font";
      size = 11;
    };

    settings = {
      hide_window_decorations = "yes";
      enable_audio_bell = false;
      confirm_os_window_close = 0;
      scrollback_lines = 10000;
      background_opacity = "0.85";
      background_blur = 1;
    };
  };
}
