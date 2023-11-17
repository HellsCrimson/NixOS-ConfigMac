{ config, pkgs, ... }:

{
  config = {
    # Define a user account. Don't forget to set a password with ‘passwd’.
    users.users.matthias = {
      isNormalUser = true;
      description = "Matthias";
      extraGroups = [ "networkmanager" "wheel" "video" ];
      packages = with pkgs; [
        firefox
        thunderbird
        python311
        kitty
        unzip
        dunst
        discord
        slack
        vscode
        jellyfin
        tailscale
        htop
        go
      ];
      shell = pkgs.zsh;
    };
  };
}
