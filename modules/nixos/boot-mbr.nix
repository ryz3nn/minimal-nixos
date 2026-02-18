{
  # Version
  system.stateVersion = "25.11";
  
  # Systemd - UEFI
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;
}
