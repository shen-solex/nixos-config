{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    protonvpn-gui
    geteduroam
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
  programs.mpv = {
    enable = true;
    package = pkgs.mpv-unwrapped.wrapper { mpv = pkgs.mpv-unwrapped.override { vapoursynthSupport = true; }; youtubeSupport = true; };
  };
}
