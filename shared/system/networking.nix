{ config, pkgs, ... }:

{
  networking.nftables.enable = true;
  services.cloudflare-warp.enable = true;

  programs.ssh.startAgent = true;
}
