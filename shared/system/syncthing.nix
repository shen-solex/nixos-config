{ config, pkgs, ... }:

{
  services.syncthing = {
    enable = true;
    openDefaultPorts = true;
    settings = {
      gui = {
        user = "lhu";
      };
    };
    guiPasswordFile = config.sops.secrets.syncthing_passwd.path;
  };
}
