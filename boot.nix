{ config, pkgs, ... }:

{
  config = {
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;
    boot.consoleLogLevel = 3;
    boot.kernelParams = [
      # Force use of the macbook_acpi driver for backlight control.
      # This allows the backlight save/load systemd service to work.
      "acpi_backlight=native"
      # "acpi_backlight=video"
    ];
    boot.extraModprobeConfig = ''
      options hid_apple swap_fn_leftctrl=1
    '';
  };
}
