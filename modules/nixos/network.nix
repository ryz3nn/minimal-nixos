{
  networking.networkmanager = { 
    enable = true;
    unmanaged = [
      "*" "except:type:wwan" "except:type:gsm"
    ];
  };

  networking.wireless.enable = true;
  networking.wireless.networks = {
    "BIN BOP".psk = "999999999";

  };
}
