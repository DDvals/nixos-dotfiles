{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    gcc
    neovim
    lazygit
  ];
}
