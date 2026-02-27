{
  hardware.enableAllFirmware = true;
  networking.networkmanager = { 
    enable = true;
    unmanaged = [
      "*" "except:type:wwan" "except:type:gsm"
    ];
  };

  networking.wireless.enable = true;
  networking.wireless.networks = {
    "BIN BOP".psk = "999999999";
    "P 2402".psk = "22112005";
  };
}
