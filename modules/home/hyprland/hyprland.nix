{ inputs, pkgs, ...}: 
{
  home.packages = with pkgs; [
    wayland
    direnv
    hyprcursor
    inputs.hyprland-plugins.packages.${pkgs.system}.hyprexpo
  ];
  systemd.user.targets.hyprland-session.Unit.Wants = [ "xdg-desktop-autostart.target" ];
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland = {
      enable = true;
      #hidpi = true;
    };
    plugins = [
      inputs.hyprland-plugins.packages.${pkgs.system}.hyprexpo
    ];
    #enableNvidiaPatches = true;
    systemd.enable = true;
  };
}