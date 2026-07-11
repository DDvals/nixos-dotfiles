{ config, pkgs, ...}:

{
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
