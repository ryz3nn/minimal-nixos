{
  # Version
  system.stateVersion = "25.05";
  
  # Systemd - UEFI
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
}