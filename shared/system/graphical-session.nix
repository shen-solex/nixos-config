{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.mango.nixosModules.mango
  ];

  programs.mango.enable = true;

  services.greetd = {
    enable = true;
  };

  programs.regreet = {
    enable = true;
  };

  services.logind.settings.Login = {
    HandleLidSwitch = "ignore";
    HandleLidSwitchExternalPower="ignore";
    HandleLidSwitchDocked="ignore";
  };

  programs.gpu-screen-recorder.enable = true;
}
