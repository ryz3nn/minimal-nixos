{ config, ... }: 
{

home.file = {
".zshrc".source =config.lib.file.mkOutOfStoreSymlink "/home/derek/minimal-nixos/dotfiles/zsh/.zshrc";
".vimrc".source =config.lib.file.mkOutOfStoreSymlink "/home/derek/minimal-nixos/dotfiles/vim/.vimrc";
".Xresources".source =config.lib.file.mkOutOfStoreSymlink "/home/derek/minimal-nixos/dotfiles/uxterm/.Xresources";
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


