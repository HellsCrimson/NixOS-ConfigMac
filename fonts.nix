{ config, pkgs, ... }:

{
  config = {
    fonts = {
      fontDir.enable = true;
      fonts = with pkgs; [
        noto-fonts
        noto-fonts-cjk
        noto-fonts-emoji
        liberation_ttf
        fira-code
        fira-code-symbols
        mplus-outline-fonts.githubRelease
        dina-font
        proggyfonts
        nerdfonts
        material-icons
        font-awesome
        iosevka
      ];
    };
  };
}
