{ configs, pkgs, ... } :
{
  services.xserver = {
    enable = true;
    layout = "us";
    displayManager.defaultSession = "none+i3";
    windowManager.i3.enable = true;
  };
}
