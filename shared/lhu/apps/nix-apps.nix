{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    protonvpn-gui
    geteduroam
    nomacs
    celluloid
    onlyoffice-desktopeditors
    discord
    zoom-us
    blender
    godot
    prismlauncher
    openmw
  ];
}
