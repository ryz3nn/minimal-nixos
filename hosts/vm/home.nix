{ config, pkgs, ... }: { 

imports = [ ];

home = {
  username = "derek";
  homeDirectory = "/home/derek";
  stateVersion = "25.05";
};

home.packages = with pkgs; [
# CLI
  git
  gh 
  fzf
  vim
  neovim
  htop
  fastfetch
  tree 

# Desktop app
  firefox
  vivaldi
  warpd

# WM ultilities
  dunst
  dmenu
  feh
  i3status
  yazi

# Random stuffs
  xorg.xev # Event listener  
];
 
# Dotfiles
home.file = {
".zshrc".source =config.lib.file.mkOutOfStoreSymlink "/home/derek/minimal-nixos/dotfiles/zsh/.zshrc";
".vimrc".source =config.lib.file.mkOutOfStoreSymlink "/home/derek/minimal-nixos/dotfiles/vim/.vimrc";
};  

xdg.configFile = {
"zsh" = {
  source = config.lib.file.mkOutOfStoreSymlink "/home/derek/minimal-nixos/dotfiles/zsh/.config/zsh";  recursive = true; 
};
"i3/config" = {
  source = config.lib.file.mkOutOfStoreSymlink "/home/derek/minimal-nixos/dotfiles/i3/.config/i3/config";
 };
"i3status/config" = {
  source = config.lib.file.mkOutOfStoreSymlink "/home/derek/minimal-nixos/dotfiles/i3/.config/i3status/config";
 };
"warpd/config" = {
  source = config.lib.file.mkOutOfStoreSymlink "/home/derek/minimal-nixos/dotfiles/warpd/.config/warpd/config";
 };
};
}
