{ config, lib, pkgs, ... }:
{ 
  imports =
  [(import ../modules/programs/exa)]
  ++ [(import ../modules/programs/fish)]
  ++ [(import ../modules/programs/git)]
  ++ [(import ../modules/programs/starship)];

  home = {
    username = "susan";
    homeDirectory = "/home/susan";

    packages = with pkgs; [
      pinentry-curses
      neofetch
      htop
    ];
    # pointerCursor = {# This will set cursor system-wide so applications can not choose their own
    #  gtk.enable = true;
    #  #name = "Dracula-cursors";
    #  name = "Catppuccin-Mocha-Dark-Cursors";
    #  #package = pkgs.dracula-theme;
    #  package = pkgs.catppuccin-cursors.mochaDark;
    #  size = 16;
    # };
    stateVersion = "23.05";
  };

  programs = {
    home-manager.enable = true;
    direnv = {
      enable = true;
      enableBashIntegration = true;
      nix-direnv.enable = true;
    };
  };

  services = {
  };

  gtk = {
    enable = true;
  #  theme = {
  #    name = "Gruvbox-Dark";
  #    package = pkgs.gruvbox-dark-gtk;
  #  };
    font = {
      name = "Fira Sans";
    };
  };
}
