{ config, pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
    settings = {
      
      font = {
        normal = { family = "JetBrains Mono Nerd Font"; style = "SemiBold"; };
        bold = { family = "JetBrains Mono Nerd Font"; style = "Bold"; };
        italic = { family = "JetBrains Mono Nerd Font"; style = "SemiBold Italic"; };
        bold_italic = { family = "JetBrains Mono Nerd Font"; style = "Bold Italic"; };
        size = 10.0;
      };

      terminal.shell.program = "fish";

      window.opacity = 1; 

      cursor = {
        style = { shape = "Block"; blinking = "Always"; };
        vi_mode_style = { shape = "Block"; };
      };

      colors = {
        primary = {
          background = "#1a1b26";
          foreground = "#a9b1d6";
        };
        normal = {
          black   = "#32344a";
          red     = "#f7768e";
          green   = "#9ece6a";
          yellow  = "#e0af68";
          blue    = "#7aa2f7";
          magenta = "#ad8ee6";
          cyan    = "#449dab";
          white   = "#787c99";
        };
        bright = {
          black   = "#444b6a";
          red     = "#ff7a93";
          green   = "#b9f27c";
          yellow  = "#ff9e64";
          blue    = "#7da6ff";
          magenta = "#bb9af7";
          cyan    = "#0db9d7";
          white   = "#acb0d0";
        };
        selection = {
          background = "#283457";
          text = "CellForeground";
        };
      };

      keyboard.bindings = [
        { key = "C"; mods = "Control"; action = "Copy"; }
        { key = "V"; mods = "Control"; action = "Paste"; }
        { key = "Plus"; mods = "Control"; action = "IncreaseFontSize"; }
        { key = "Minus"; mods = "Control"; action = "DecreaseFontSize"; }
      ];
    };
  };
}
