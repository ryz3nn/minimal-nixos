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
        sessionPackages = with pkgs; [
            sway
            lxqt
            openbox
        ];
    };
    # lxqt + openbox
    desktopManager.lxqt.enable = true;
    windowManager.openbox.enable = true;
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

  environment.etc."xdg/sessions/openbox.desktop".text = ''
    [Desktop Entry]
    Name=LXQt
    Exec=startlqxt
    Type=Application
  '';


  # Optional: start Sway by default in SDDM
  # If SDDM allows default session selection, it will pick sway.desktop
  # You can also set this per-user (see below)
}
