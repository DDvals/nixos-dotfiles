{ config, pkgs, ...}:

{
	home.username = "danzi";
	home.homeDirectory = "/home/danzi";
	programs.git.enable = true;
	home.stateVersion = "26.05";
	home.packages = with pkgs; [
		firefox
		zip
		unzip
		ripgrep
		gcc
		neovim
	];
	programs.bash = {
		enable = true;
		shellAliases = {
			nix-rebuild = "sudo nixos-rebuild switch --flake ~/nixos-dotfiles/";
		};
	};
}
