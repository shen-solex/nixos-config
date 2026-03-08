{ ... }:

{
  imports = [
    ./secrets.nix
    ./nix-settings.nix
    ./environment.nix
    ./networking.nix
    ./packages.nix
    ./printing.nix
    ./style.nix
    ./audio.nix
    ./graphical-session.nix
    ./syncthing.nix
    ./file-management.nix
    ./steam.nix
  ];
}
