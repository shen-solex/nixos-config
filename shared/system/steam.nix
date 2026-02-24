{ config, pkgs, ... }:

{
  programs.steam = {
    enable = true;
    protontricks = {
      enable = true;
    };
  };
}
