{ pkgs, ... }:
{
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    sarasa-gothic  # Great for coding (contains CJK characters)
    source-han-sans
    source-han-serif
  ];
}
