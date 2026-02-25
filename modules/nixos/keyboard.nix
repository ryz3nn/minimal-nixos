{ config, pkgs, ...}:

{
  boot.initrd.availableKernelModules = [ "usbhid" "hid_generic" ];
  boot.kernelParams = [ "usbcore.autosuspend=-1" ];
}
