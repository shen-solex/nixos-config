{ config, pkgs, ... }:

{
  programs.fish = {
    enable = true;
    shellInitLast = "starship init fish | source";
  };

  programs.starship = {
    enable = true;
    enableTransience = true;
    settings = builtins.fromTOML (builtins.readFile ./jetpack.toml);
  };
}
