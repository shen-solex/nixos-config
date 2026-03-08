{ config, pkgs, ... }:

{
  services.syncthing = {
    enable = true;
    openDefaultPorts = true;
    settings = {
      gui = {
        user = "lhu";
      };
      devices = {
        "iphone" = { id = "6XA25GM-VL2SKAY-JNC5LVH-5BT3BOV-HPGFWLQ-OTPXF3G-XYMSX2N-EHO43AQ"; };
      };
      folders = {
        ".keepassxc" = {
          path = "/home/lhu/.keepassxc";
          devices = [ "iphone" ];
        };
      };
    };
    guiPasswordFile = config.sops.secrets.syncthing_passwd.path;
  };
}
