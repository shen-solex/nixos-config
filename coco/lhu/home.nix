{ config, pkgs, ... }:

{
  home.username = "lhu";
  home.homeDirectory = "/home/lhu";

  imports = [
    ../../shared/lhu
  ];

  home.stateVersion = "25.11";
}
