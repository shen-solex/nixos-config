{ config, pkgs, ... }:

{
  services.cloudflare-warp.enable = true;
  networking.nftables.enable = true;
}
