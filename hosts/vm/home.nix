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
 
# Dotfiles
home.file = {
".zshrc".source =config.lib.file.mkOutOfStoreSymlink "../../dotfiles/zsh/.zshrc";
".vimrc".source =config.lib.file.mkOutOfStoreSymlink "../../dotfiles/vim/.vimrc";
};  

xdg.configFile = {
"zsh".source = config.lib.file.mkOutOfStoreSymlink "../../dotfiles/zsh/.config/zsh" 
};
}
