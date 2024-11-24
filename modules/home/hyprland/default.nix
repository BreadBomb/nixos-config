{ inputs, ... }: 
{
  imports = [
    ./variables.nix
    ./hyprland.nix
    ./config.nix
    ./hyprpaper.nix
    ./hyprlock.nix
  ];
}