{ inputs, pkgs, ...}: 
{
  home.packages = with pkgs; [
    hyprpaper
  ];
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [
        "${inputs.self}/wallpapers/cat.jpg"
      ];
        wallpaper = [
          "DP-2,${inputs.self}/wallpapers/cat.jpg"
          "DP-1,${inputs.self}/wallpapers/cat.jpg"
        ];
    };
  };
}