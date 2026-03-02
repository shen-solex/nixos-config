{ config, pkgs, ... }:

{
  programs.thunar = {
    enable = true;
    plugins = with pkgs.xfce; [
      thunar-dropbox-plugin
      thunar-archive-plugin
      thunar-volman
    ];
  };
  services.gvfs.enable = true;
  services.udisks2.enable = true;
  services.tumbler.enable = true;

  programs.partition-manager.enable = true;
}
