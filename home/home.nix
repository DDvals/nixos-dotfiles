{ config, pkgs, ... }:
let
  dotfiles = "${config.home.homeDirectory}/nixos-dotfiles/config";
  create_symlink = path: config.lib.file.mkOutOfStoreSymlink path;
  configs = {
    qtile = "qtile";
    nvim = "nvim";
    alacritty = "dotfiles/alacritty";
  };
in
{
  imports = [
    ../modules/neovim.nix
  ];

  home.username = "danzi";
  home.homeDirectory = "/home/danzi";
  programs.git = {
    enable = true;
    settings.credential.helper = "manager";
    settings.credential."https://github.com".username = "DDvals";
    settings.credential.credentialStore = "cache";
  };
  home.stateVersion = "26.05";
  home.packages = with pkgs; [
    firefox
    zip
    unzip
    git
    git-credential-manager
    gcc
    neovim
  ];
  programs.bash = {
    enable = true;
    shellAliases = {
      nix-rebuild = "sudo nixos-rebuild switch --flake ~/nixos-dotfiles/";
    };
  };

  xdg.configFile = builtins.mapAttrs (name: subpath: {
    source = create_symlink "${dotfiles}/${subpath}";
    recursive = true;
  }) configs;
}
