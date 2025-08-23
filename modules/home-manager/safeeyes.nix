# Safeeyes
{
services.safeeyes.enable = true;
services.snixembed = {
  enable = true;
  beforeUnits = [
    "safeeyes.service"
  ];
};
}

