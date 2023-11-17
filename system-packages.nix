{ config, pkgs, ... }:

{
  config = {
    # List packages installed in system profile. To search, run:
    # $ nix search wget
    environment.systemPackages = [
      pkgs.neovim
      pkgs.git
      pkgs.wget
      pkgs.bitwarden
      pkgs.rofi
      pkgs.playerctl
      pkgs.wl-clipboard
      pkgs.zsh-powerlevel10k
      pkgs.neofetch
      pkgs.nitrogen
      pkgs.acpilight
      pkgs.brightnessctl
      pkgs.libnotify
      pkgs.pamixer
      pkgs.xautolock
      pkgs.scrot
      pkgs.polybarFull
      pkgs.pinentry
      pkgs.imagemagick
    ];
  };
}
