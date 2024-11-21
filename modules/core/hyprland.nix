{ inputs, pkgs, username, ... }:
{
  programs.hyprland.enable = true;
  services.getty.autologinUser = username;
  services.getty.autologinOnce = true;
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    xdgOpenUsePortal = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-hyprland
      pkgs.xdg-desktop-portal-gtk
    ];
  };

  environment.systemPackages = with pkgs; [
    # xwaylandvideobridge
  ];
}