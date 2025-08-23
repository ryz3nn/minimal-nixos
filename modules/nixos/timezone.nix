{ options, ... }: 
{
  time.timeZone = "Asia/Bangkok";
  time.hardwareClockInLocalTime = true;
  networking.timeServers = options.networking.timeServers.default ++ [ "time1.google.com" ];
  services.ntp.enable = true;
}
