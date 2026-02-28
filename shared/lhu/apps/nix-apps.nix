{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    protonvpn-gui
    geteduroam
    vlc
    nomacs
    onlyoffice-desktopeditors
    zoom-us
    blender
    godot
    prismlauncher
    openmw
  ];

  programs.discord.enable = true;
  programs.foliate.enable = true;
}
