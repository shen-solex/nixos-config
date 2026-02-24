{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    wget
    tree
    psmisc
  ];  

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
  ];

  services.flatpak.enable = true;
}
