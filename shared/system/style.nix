{ config, pkgs, lib, inputs, ... }:

{
  imports = [
    inputs.stylix.nixosModules.stylix
  ];

  stylix = {
    enable = true;
    image = ./wallpapers/wp-forest.jpg;
    polarity = "dark";
    base16Scheme = "${pkgs.base16-schemes}/share/themes/everforest.yaml";
    fonts = {
      serif = {
        package = pkgs.roboto-serif;
        name = "Roboto Serif";
      };
      sansSerif = {
        package = pkgs.roboto;
        name = "Roboto";
      };
      monospace = {
        package = pkgs.nerd-fonts.roboto-mono;
        name = "RobotoMono Nerd Font";
      };
    };
    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
    };
    icons = {
      enable = true;
      package = pkgs.papirus-icon-theme;
      dark = "Papirus-Dark";
      light = "Papirus-Light";
    };
  };

  specialisation.CatppuccinLatte.configuration = {
    stylix = {
      image = lib.mkForce ./wallpapers/wp-graduation.png;
      polarity = lib.mkForce "light";
      base16Scheme = lib.mkForce "${pkgs.base16-schemes}/share/themes/catppuccin-latte.yaml";
    };

    environment.etc."specialisation".text = "CatppuccinLatte";
  };

  specialisation.Nord.configuration = {
    stylix = {
      image = lib.mkForce ./wallpapers/wp-nord.jpg;
      polarity = lib.mkForce "dark";
      base16Scheme = lib.mkForce "${pkgs.base16-schemes}/share/themes/nord.yaml";
    };

    environment.etc."specialisation".text = "Nord";
  };
}
