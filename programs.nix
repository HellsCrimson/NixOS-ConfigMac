{ config, pkgs, ... }:

{
  config = {
    programs = {
      zsh = {
        enable = true;
        autosuggestions.enable = true;
        syntaxHighlighting.enable = true;
        shellAliases = {
          ll = "ls -l";
          update = "sudo nixos-rebuild switch";
          tpush = "git push --follow-tags";
          snvim = "sudo -E -s nvim";
        };
        ohMyZsh = {
          enable = true;
          plugins = [ "git" ];
          theme = "powerlevel10k/powerlevel10k";
        };
        histSize = 10000;
        promptInit = "neofetch";
      };

      hyprland = {
        enable = false;
      };

      light.enable = true;

      steam = {
        enable = true;
        remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
        dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
      };

      gnupg.agent = {
        enable = true;
        pinentryFlavor = "gtk2";
        enableSSHSupport = true;
      };
    };
  };
}
