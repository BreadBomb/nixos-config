{ inputs, ... }: 
{
  imports = [
    ./variables.nix
    ./hyprland.nix
    ./config.nix
    inputs.hyprland.homeManagerModules.default
    ./hyprpaper.nix
    ./hyprlock.nix
  ];
}