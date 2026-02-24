{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Larry Hu";
        email = "199412713+shen-solex@users.noreply.github.com";
      };
    };
  };

  programs.gh = {
    enable = true;
  };

  programs.lazygit = {
    enable = true;
  };
}
