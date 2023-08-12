{config, lib, pkgs, ...}:
{
  programs.fish = {
    enable = true;
    shellAliases = {
      "rebuild" = "sudo nixos-rebuild --flake .";
    };
  };
}