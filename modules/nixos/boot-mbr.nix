{
  # Version
  system.stateVersion = "25.05";
  
  # Systemd - UEFI
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;
}
