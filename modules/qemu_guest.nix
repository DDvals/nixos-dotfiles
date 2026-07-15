{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    spice-vdagent
  ];

  services.spice-vdagentd.enable = true;
  services.qemuGuest.enable = true;
}
