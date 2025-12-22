{ config, pkgs, ... }: {
  programs.waybar = {
    enable = true;
    
    settings = {
      mainBar = {
        layer = "top";
        position = "left"; 
        width = 50;
        spacing = 0;

        margin-top = 50;
        margin-bottom = 50;
        margin-left = 25;
        margin-right = 0;
        
        modules-left = [ "hyprland/workspaces" ];
        modules-center = [ "hyprland/window" ];
        modules-right = [
          "hyprland/language"
          "pulseaudio"
          "memory"
          "clock"
          "tray"
        ];
        
        "hyprland/workspaces" = {
          format = "{id}";
          on-click = "activate";
          all-outputs = true;
          persistent-workspaces = {
            "1" = [];
          };
        };

        "hyprland/language" = {
          format = "{}";
          format-en = "EN";
          format-ru = "RU";
        };
        
        "hyprland/window" = {
          format = "{class}";
          rotate = 90;
        };

        "clock" = {
          format = "{:%H\n%M}"; 
          interval = 1;
        };

        "memory" = {
          format = "RAM\n{used:0.1f}";
          tooltip-format = "RAM: {used:0.1f} / {total:0.1f} ({percentage})";
        };
        
        "pulseaudio" = {
          format = "VOL\n{volume}%";
        };
      };
    };
    
    style = ''
      @define-color background #1a1b26;
      @define-color foreground #a9b1d6;
      @define-color accent     #7aa2f7; 
      
      * {
        border: none;
        border-radius: 0; 
        font-family: "JetBrainsMono Nerd Font", sans-serif; 
        font-size: 14px;
        color: @foreground;
      }
      
      window#waybar {
        background-color: rgba(26, 27, 38, 0.9); 
        color: @foreground;
        border: 3px solid @accent; 
        border-radius: 10px;
        font-size: 14px;
      }
      
      #workspaces {
        margin-top: 5px;
      }

      #workspaces button.active {
        font-weight: 900; 
        font-size: 14px;
        color: @accent;
      }

      #clock, #memory, #pulseaudio, #language, #tray, #window {
        padding: 8px 0;
        margin: 0;
      }

      #clock {
        color: @foreground;
        font-weight: bold;
        font-size: 16px;
      }

      #language {
        color: @foreground;
        font-weight: bold;
        font-size: 14px;
      }

      #window {
        color: @foreground;
        font-weight: bold;
      }

      #memory {
        color: @foreground;
        font-weight: bold;
        font-size: 14px;
      }

      #pulseaudio {
        color: @foreground;
        font-weight: bold;
        font-size: 14px;
      }
      
      #tray {
        margin-bottom: 8px;
      }
    '';
  };
}
