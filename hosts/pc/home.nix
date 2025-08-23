{ config, pkgs, ... }: { 

imports = [
  # ../../modules/home-manager/safeeyes.nix
  ../../modules/home-manager/git.nix
  ../../modules/home-manager/dotfiles.nix
];

home = {
  username = "derek";
  homeDirectory = "/home/derek";
  stateVersion = "25.05";
};

home.packages = with pkgs; [

# Dev

# CLI
  git
  gh 
  fzf
  vim-full
  fastfetch
  tree 
  btop
  ctags
  tmux
  unzip
  

# Desktop app
  firefox
  warpd
  # safeeyes
  chromium
  anki
  stretchly

# WM ultilities
  dunst
  dmenu
  feh
  i3status
  yazi
  pulseaudio
  # snixembed # Tray icon
  scrcpy
  android-tools
  maim # Screenshot
  xclip


# Random stuffs
  xorg.xev # Event listener  
];
 

}


