{ config, pkgs, ...}:

{
  boot.initrd.availableKernelModules = [ "usbhid" "hid_generic" ];
  boot.kernelParams = [ "usbcore.autosuspend=-1" ];
  services.udev.extraRules = ''
  ACTION=="add", SUBSYSTEM=="usb", ATTR{idVendor}=="0c45", ATTR{idProduct}=="fefe", ATTR{power/control}="on"
'';
}
