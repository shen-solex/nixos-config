{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.mango.hmModules.mango
  ];
  
  xdg.configFile."mango/theme.conf" = {
    text = with config.lib.stylix.colors; ''
      rootcolor=0x${base00}ff
      bordercolor=0x${base03}00
      focuscolor=0x${base0D}ff
      urgentcolor=0x${base08}ff
    '';
    force = true;
  };

  wayland.windowManager.mango = {
    enable = true;
    settings = builtins.readFile ./config.conf;
    autostart_sh = ''
      systemctl --user import-environment PATH
      systemctl --user restart xdg-desktop-portal.service
      noctalia-shell
    '';
  };

  services.polkit-gnome.enable = true;

  home.packages = with pkgs; [
    grim
    slurp
  ];

  programs.swappy = {
    enable = true;
    settings = {
      Default = {
        save_dir="$HOME/Pictures";
        save_filename_format="Screenshot-%Y%m%d-%H%M%S.png";
      };
    };
  };
}
