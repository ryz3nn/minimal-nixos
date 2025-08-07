{ config, pkgs, ... }: {
  imports = [
  ];

  home = {
    username = "derek";
    homeDirectory = "/home/derek";
    stateVersion = "25.05";
  };

  home.packages = with pkgs; [
    # CLI
        git
        vim
        neovim
        htop
        fastfetch
        tree 

    # Desktop app
        wezterm
        firefox
  ];
  
}