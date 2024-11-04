{ inputs, config, pkgs, lib, self, ... }: let

  theme = config.desktop.theme;

in {
  options.desktop.theme = {
  };

  config = {
    gtk = {
      enable = true;
#       font = {
#         name = "Noto Sans";
#         size = 10;
#       };
#       cursorTheme = {
#         name = "breeze_cursors";
#         size = 20;
#       };
       theme = {
         package = pkgs.everforest-gtk-theme;
         name = "Everforest-Dark-B-LB";
       };
#       iconTheme = {
#         name = "breeze-dark";
#       };

      gtk3 = {
        extraConfig = {
          gtk-application-prefer-dark-theme = true;
          gtk-button-images = true;
          gtk-decoration-layout = "icon:minimize,maximize,close";
          gtk-enable-animations=true;
          gtk-menu-images = true;
          gtk-modules = "colorreload-gtk-module";
          gtk-primary-button-warps-slider = true;
          gtk-sound-theme-name = "ocean";
          gtk-toolbar-style = 3;
          gtk-xft-dpi = 172032;
        };
      };
      gtk4 = {
        extraConfig = {
          gtk-application-prefer-dark-theme = true;
          gtk-button-images = true;
          gtk-decoration-layout = "icon:minimize,maximize,close";
          gtk-enable-animations=true;
          gtk-menu-images = true;
          gtk-modules = "colorreload-gtk-module";
          gtk-primary-button-warps-slider = true;
          gtk-sound-theme-name = "ocean";
          gtk-toolbar-style = 3;
          gtk-xft-dpi = 172032;
        };
      };
    };
    qt = {

    };
  };
}
