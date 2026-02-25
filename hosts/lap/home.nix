{ config, pkgs, ... }: { 

imports = [
];

home = {
  username = "derek";
  homeDirectory = "/home/derek";
  stateVersion = "25.11";
};

home.packages = with pkgs; [

# Dev
  python315
  nodejs_24
  gnumake
  gcc
  dtc

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
  multipath-tools
  openssl
  inetutils

# Desktop app
  firefox
  xfce.thunar
  warpd
  chromium
  stretchly
  pavucontrol
  xsct

# WM ultilities
  dunst
  dmenu
  feh
  i3status
  pulseaudio
  scrcpy
  android-tools
  maim # Screenshot
  xclip
  volumeicon
  pasystray
  ncdu # Disk analyze
  mosh # ssh alternative


# Random stuffs
  xorg.xev # Event listener  
  xorg.xmodmap
];

# Dotfile
home.file = {
".zshrc".source =config.lib.file.mkOutOfStoreSymlink "/home/derek/minimal-nixos/dotfiles/zsh/.zshrc";
".vimrc".source =config.lib.file.mkOutOfStoreSymlink "/home/derek/minimal-nixos/dotfiles/vim/.vimrc";
".Xresources".source =config.lib.file.mkOutOfStoreSymlink "/home/derek/minimal-nixos/dotfiles/uxterm/.Xresources";
".Xmodmap".source =config.lib.file.mkOutOfStoreSymlink "/home/derek/minimal-nixos/dotfiles/Xmodmap/.Xmodmap";
};  

xdg.configFile = {

"zsh" = {
  source = config.lib.file.mkOutOfStoreSymlink "/home/derek/minimal-nixos/dotfiles/zsh/.config/zsh";  recursive = true; 
};
"i3/config" = {
  source = config.lib.file.mkOutOfStoreSymlink "/home/derek/minimal-nixos/dotfiles/i3/.config/i3/lap-config";
 };
"i3status/config" = {
  source = config.lib.file.mkOutOfStoreSymlink "/home/derek/minimal-nixos/dotfiles/i3/.config/i3status/config";
 };
"warpd/config" = {
  source = config.lib.file.mkOutOfStoreSymlink "/home/derek/minimal-nixos/dotfiles/warpd/.config/warpd/config";
 };
  
};

# Git
programs.git = {
  enable = true;
  userName = "derek";
  userEmail = "derek@nixos.none";
};
}



