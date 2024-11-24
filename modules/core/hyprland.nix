{ inputs, pkgs, username, ... }:
{
  programs.hyprland.enable = true;
  services.getty.autologinUser = username;
  services.getty.autologinOnce = true;

  services.greetd = {
    enable = true;
    settings = rec {
      initial_session = {
        command = "Hyprland";
        user = "jonah";
      };
      default_session = initial_session;
    };
  };

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