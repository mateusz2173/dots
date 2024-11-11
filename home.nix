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
    tmux
  ];

  imports = [
	./neovim/default.nix
  ];

  home.file = {
    # ".screenrc".source = dotfiles/screenrc;
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
}
