{ config, pkgs, ... }:

{
  home.packages = [ pkgs.nitch ];
  programs.fzf = {
    enable = true;
  };
  programs.btop = {
    enable = true;
  };
  programs.eza = {
    enable = true;
    enableFishIntegration = true;
    icons = "auto";
    git = true;
  };
  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
  };
}
