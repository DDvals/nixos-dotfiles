{
  config,
  pkgs,
  lib,
  ...
}:
{
  home.packages = with pkgs; [
    neovim
    ripgrep
    fd
    fzf
    lua-language-server
    nil
    cargo
    nixpkgs-fmt
    nodejs
  ];

  #xdg.configFile."nvim" = {
  #	source = config.lib.file.mkOutOfStoreSymlink "/home/danzi/nixos-dotfiles/config/neovim-config";
  #	recursive = true;
  #
  #};
}
