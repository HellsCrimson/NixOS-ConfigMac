{ config, pkgs, ... }:

{
  config = {
    environment.pathsToLink = [ "/libexec" ];

    services.xserver = {
      enable = true;

      # Configure keymap in X11
      layout = "fr";
      xkbVariant = "mac";

      libinput.touchpad.naturalScrolling = true;

      desktopManager = {
        gnome.enable = true;
        xterm.enable = false;
      };
     
      displayManager = {
        defaultSession = "none+i3";
        gdm.enable = true;
      };

      windowManager = {
        i3 = {
          enable = true;
          package = pkgs.i3-gaps;
          extraPackages = with pkgs; [
            dmenu #application launcher most people use
            i3status # gives you the default i3 status bar
            i3lock #default i3 screen locker
            i3blocks #if you are planning on using i3blocks over i3status
            acpi
            sysstat
            perl
            lm_sensors
          ];
        };
      };
    };
  };
}
