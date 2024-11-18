{ inputs, pkgs, ...}: 
{
  home.packages = with pkgs; [
    hyprpaper
  ];
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [
        "${inputs.self}/wallpapers/2paggfqi38aa1.webp"
      ];
        wallpaper = [
          "DP-2,${inputs.self}/wallpapers/2paggfqi38aa1.webp"
          "DP-1,${inputs.self}/wallpapers/2paggfqi38aa1.webp"
        ];
    };
  };
}