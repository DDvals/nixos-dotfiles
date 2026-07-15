{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    vim
    wget
    alacritty
    firefox
    zip
    unzip
    git
    git-credential-manager
    gcc
    pcmanfm
    ristretto
  ];

  services.gvfs.enable = true; # automount usb
  services.tumbler.enable = true; # tumbnail
}
