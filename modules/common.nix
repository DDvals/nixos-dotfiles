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
    neovim
    pcmanfm
  ];

  services.gvfs.enable = true; # automount usb
}
