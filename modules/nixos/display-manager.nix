{ config, pkgs, ... }:

{
  # SDDM as display manager
  services.xserver = {
    enable = true;
    displayManager = {
        sddm = {
            enable = true;
            wayland.enable = true;
        };
        defaultSession = "sway";
    };
    # lxqt
    desktopManager.lxqt.enable = true;
  };

  # Sway as Wayland window manager
  programs.sway.enable = true;

  # Needed for Openbox to work properly
  environment.systemPackages = with pkgs; [
    lxappearance
    lxqt.lxqt-config
    lxqt.lxqt-session
  ];

  # Create custom sessions
  environment.etc."wayland-sessions/sway.desktop".text = ''
    [Desktop Entry]
    Name=Sway
    Exec=sway
    Type=Application
  '';
}
