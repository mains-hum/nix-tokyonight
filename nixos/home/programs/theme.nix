{ pkgs, lib, ... }: {
  gtk = {
    enable = true;
    
    theme = {
      name = "Tokyonight-Dark";
      package = pkgs.tokyonight-gtk-theme;
    };
    
    cursorTheme = {
      name = "phinger-cursors-dark";
      package = pkgs.phinger-cursors;
      size = 24;
    };
    
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
    
    font = {
      name = "JetBrainsMono Nerd Font";
      size = 11;
    };
    
    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
    
    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
  };
  
  qt = {
    enable = true;
    platformTheme.name = "gtk";
    style.name = "gtk2";
  };
  
  home.sessionVariables = {
    GTK_THEME = "Tokyonight-Dark";
    QT_QPA_PLATFORMTHEME = "gtk2";
    QT_STYLE_OVERRIDE = "gtk2";
    ADW_DISABLE_PORTAL = "1";
  };
  
  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      gtk-theme = lib.mkForce "Tokyonight-Dark";
      icon-theme = lib.mkForce "Papirus-Dark";
      cursor-theme = "phinger-cursors-dark";
      cursor-size = 24;
      font-name = "JetBrainsMono Nerd Font 11";
    };
  };
  
  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
    name = "phinger-cursors-dark";
    package = pkgs.phinger-cursors;
    size = 24;
  };
  
  home.packages = with pkgs; [
    tokyonight-gtk-theme
    papirus-icon-theme
    phinger-cursors
    lxappearance  
  ];
}
