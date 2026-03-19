{
  description = ''
    A flake providing a wrapped `wezterm` package with an extra keybind!
  '';
  inputs.wrappers.url = "github:BirdeeHub/nix-wrapper-modules";
  outputs = { self, wrappers }: {
    # These things work without flakes too,
    # but this gives an example from start to finish!
    packages.x86_64-linux.default = wrappers.lib.evalPackage
      ({ config, lib, wlib, pkgs, ... }: {
        pkgs = wrappers.inputs.nixpkgs.legacyPackages.x86_64-linux;
        imports = [ wlib.wrapperModules.waybar ];
        settings = {
          height = 50;
          layer = "top";
          margin-left = 10;
          margin-right = 10;
          margin-top = 5;
          modules-left = [ "custom/menu" "niri/workspaces" "niri/windows" ];
          modules-center = [ "mpris" "cava" "wireplumber" ];
          modules-right = [ "tray" "power-profiles-daemon" "battery" "network" "bluetooth" ];
          "custom/menu" = {
            format = "";
            on-click = "fuzzel";
          };
          "niri/workspaces" = {
            format-icons = {
              active = "󰮯";
              default = "";
            };
          };
          "niri/windows" = {
            icon = true;
          };
          mpris = {
            
          };
          cava = {
            method = "raw";
          };
          wireplumber = {
            format = "{icon} {volume}%";
            format-muted = "";
            format-icons = {
              default = [ "" "" " " ];
            };
            on-click = "wpctl set-mute @DEFAULT_SINK@ toggle";
          };
          tray = {
            icon-size = 18;
            spacing = 5;
          };
          power-profiles-daemon = {
            
          };
          battery = {
            format = "{icon} {capacity}%";
            format-icons = [ "󰂃" "󰁼" "󰁾" "󰂀" "󰁹" ];
          };
          network = {
            format = "{icon}";
            format-icons = [ "󰤯" "󰤟" "󰤢" "󰤨"];
          };
          bluetooth = {
            format-on = "󰂯";
            format-connected = "󰂯";
            format-disabled = "󰂲";
            format-off = "󰂲";
            format-no-controller = "󰂲";
          };
        };
      });
  };
}
