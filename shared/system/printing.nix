{ config, pkgs, ... }:

{
  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };

  services.printing = {
    enable = true;
    startWhenNeeded = true;
    drivers = with pkgs; [
      cups-filters
      cups-browsed
    ];
  };
}
