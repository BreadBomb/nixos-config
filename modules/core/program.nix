{ pkgs, lib, ... }: 
{
  programs.zsh.enable = true;
  programs.uwsm.enable = true;
  services.gvfs.enable = true;

  # TODO: put this in a standalone file
  programs.uwsm.waylandCompositors = {
    hyprland = {
      prettyName = "Hyprland";
      comment = "Hyprland compositor managed by UWSM";
      binPath = "/run/current-system/sw/bin/Hyprland";
    };
  };
}