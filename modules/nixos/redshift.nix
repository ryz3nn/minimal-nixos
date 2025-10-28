{ config, pkgs, callPackage, ... }: {
  services.redshift = {
    enable = true;
    brightness = {
      # Note the string values below.
      day = "0.8";
      night = "0.7";
    };
    temperature = {
      day = 6500;
      night = 3700;
    };
  };
  location.latitude = 21.0283334;
  location.longitude = 105.854041;
}
