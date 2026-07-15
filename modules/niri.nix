{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    fuzzel
    swaylock
    mako
    #waybar
    swayidle
    swaybg
    xwayland-satellite
  ];

  programs.niri.enable = true;
  programs.waybar.enable = true;
  security.polkit.enable = true;
  services.gnome.gnome-keyring.enable = true;
  security.pam.services.swaylock = { };
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gnome ];
  };

  systemd.user.services.niri.enableDefaultPath = false;
}
