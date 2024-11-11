{ config, pkgs, ... }:

{
  home.username = "morphe";
  home.homeDirectory = "/home/morphe";

  home.stateVersion = "24.05";

  home.packages = with pkgs; [
    eza
    bat
    btop
    neofetch
    jq
  ];

  imports = [
	./neovim/default.nix
  ];

  home.file = {
    # ".screenrc".source = dotfiles/screenrc;
  };

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  programs.home-manager.enable = true;
}
