{ config, pkgs, ... }:

{
  programs.kitty = {
    enable = true;
    
    font = {
      name = "JetBrainsMono Nerd Font";
      size = 10;
    };

    settings = {
      shell = "fish";
      window_padding_width = 0;
      background_opacity = "1.0";
      background_blur = 0;
      enable_audio_bell = false;

      foreground            = "#a9b1d6";
      background            = "#1a1b26";
      selection_foreground  = "#a9b1d6";
      selection_background  = "#283457";
      url_color             = "#73daca";
      cursor                = "#c0caf5";
      cursor_text_color     = "#1a1b26";

      # Black
      color0 = "#414868";
      color8 = "#414868";

      # Red
      color1 = "#f7768e";
      color9 = "#f7768e";

      # Green
      color2  = "#73daca";
      color10 = "#73daca";

      # Yellow
      color3  = "#e0af68";
      color11 = "#e0af68";

      # Blue
      color4  = "#7aa2f7";
      color12 = "#7aa2f7";

      # Magenta
      color5  = "#bb9af7";
      color13 = "#bb9af7";

      # Cyan
      color6  = "#7dcfff";
      color14 = "#7dcfff";

      # White
      color7  = "#c0caf5";
      color15 = "#c0caf5";
    };

    keybindings = {
      "ctrl+c" = "copy_or_interrupt";
      "ctrl+plus" = "change_font_size all +1";
      "ctrl+equal" = "change_font_size all +1";
      "ctrl+kp_add" = "change_font_size all +1";
      "ctrl+minus" = "change_font_size all -1";
      "ctrl+underscore" = "change_font_size all -1";
      "ctrl+kp_subtract" = "change_font_size all -1";
      "ctrl+0" = "change_font_size all 0";
      "ctrl+kp_0" = "change_font_size all 0";
    };

    extraConfig = ""; 
  };
}
