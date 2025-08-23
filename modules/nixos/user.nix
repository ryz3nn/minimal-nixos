{ pkgs, ... }: {
  programs.zsh.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;
    users.derek = {
      isNormalUser = true;
      initialPassword = "0";
      extraGroups = [ "wheel" "networkmanager" ];
    };
  };
}
