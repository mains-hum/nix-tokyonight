{ config, pkgs, lib, ... }:

let
  inherit (config.lib.formats.rasi) mkLiteral;
in
{
  programs.rofi = {
    enable = true;
    
    extraConfig = {
      modi = "drun";
      font = "JetBrainsMono Nerd Font 12";
      show-icons = true;
      icon-theme = "Papirus-Dark";
      terminal = "kitty";
      drun-display-format = "{name}";
      location = 0;
      disable-history = false;
      hide-scrollbar = true;
      display-drun = "   ";
      sidebar-mode = false;
    };

    theme = {
      "*" = {
        bg0 = mkLiteral "rgba(26, 27, 38, 0.85)"; 
        bg1 = mkLiteral "rgba(36, 40, 59, 0.95)";
        fg0 = mkLiteral "#a9b1d6";
        accent = mkLiteral "#7aa2f7";
        urgent = mkLiteral "#f7768e";
        bg-selected = mkLiteral "rgba(122, 162, 247, 0.2)";
      };

      "window" = {
        height = mkLiteral "800px";
        width = mkLiteral "1000px";
        border = mkLiteral "3px";
        border-color = mkLiteral "@accent";
        background-color = mkLiteral "@bg0";
        border-radius = mkLiteral "5px";
        padding = mkLiteral "30px";
      };

      "mainbox" = {
        background-color = mkLiteral "transparent";
        children = map mkLiteral [ "inputbar" "listview" ];
      };

      "inputbar" = {
        background-color = mkLiteral "@bg1";
        text-color = mkLiteral "@fg0";
        border-radius = mkLiteral "5px";
        padding = mkLiteral "12px";
        margin = mkLiteral "0px 0px 20px 0px";
        children = map mkLiteral [ "prompt" "entry" ];
      };

      "prompt" = {
        enabled = true;
        background-color = mkLiteral "transparent";
        text-color = mkLiteral "@accent";
      };

      "entry" = {
        background-color = mkLiteral "transparent";
        text-color = mkLiteral "@fg0";
        placeholder = "Search apps...";
        placeholder-color = mkLiteral "rgba(169, 177, 214, 0.3)";
      };

      "listview" = {
        background-color = mkLiteral "transparent";
        columns = 2;
        lines = 10;
        spacing = mkLiteral "12px";
        scrollbar = false;
        fixed-height = true;
      };

      "element" = {
        padding = mkLiteral "12px";
        background-color = mkLiteral "transparent";
        text-color = mkLiteral "@fg0";
        border-radius = mkLiteral "5px";
      };

      "element-icon" = {
        size = mkLiteral "32px";
        margin = mkLiteral "0 12px 0 0";
        background-color = mkLiteral "transparent";
      };

      "element-text" = {
        vertical-align = mkLiteral "0.5";
        background-color = mkLiteral "transparent";
        text-color = mkLiteral "inherit";
      };

      "element selected" = {
        background-color = mkLiteral "@bg-selected";
        text-color = mkLiteral "@accent";
        border = mkLiteral "1px";
        border-color = mkLiteral "@accent";
      };

      "error-message" = {
        padding = mkLiteral "20px";
        background-color = mkLiteral "@bg0";
        text-color = mkLiteral "@urgent";
      };
    };
  };
}
