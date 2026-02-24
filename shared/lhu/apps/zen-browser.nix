{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.zen-browser.homeModules.beta
  ];

  programs.zen-browser = {
    enable = true;
    profiles.main = {
      name = "Main";
      search = {
        force = true;
        default = "ddg";
      };
      extensions.packages = with inputs.firefox-addons.packages.${pkgs.stdenv.hostPlatform.system}; [
        ublock-origin
        keepassxc-browser
      ];
    };
  };

  stylix.targets.zen-browser.profileNames = [ "main" ];
}
