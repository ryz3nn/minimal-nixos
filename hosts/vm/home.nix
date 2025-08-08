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
  gh 
  fzf
  vim
  neovim
  htop
  fastfetch
  tree 

# Desktop app
  #wezterm
  firefox

# WM ultilities
  waybar
  slurp
  mako 
  wl-clipboard 
  yazi
  
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
"sway/config" = {
  source = config.lib.file.mkOutOfStoreSymlink "/home/derek/minimal-nixos/dotfiles/zsh/.config/sway/config";
 };
};
}
