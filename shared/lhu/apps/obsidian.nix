{ config, pkgs, ... }:

{
  programs.obsidian = {
    enable = true;
    vaults = {
      Writing = {
        target = "Documents/Obsidian/Writing";
      };
    };
  };
}
