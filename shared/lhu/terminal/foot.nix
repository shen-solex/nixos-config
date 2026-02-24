{ config, pkgs, ... }:

{
  programs.foot = {
    enable = true;
    settings = {
      main = {
        shell = "/usr/bin/env fish";
      };
      cursor = {
        style = "beam";
        blink = "yes";
      };
    };
  };
}
