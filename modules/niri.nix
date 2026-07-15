{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    xwayland-satellite
  ];

  programs.niri.enable = true;
  programs.dms-shell.enable = true;
  security.polkit.enable = true;
  services.gnome.gnome-keyring.enable = true;
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gnome ];
  };

  systemd.user.services.niri.enableDefaultPath = false;
}
