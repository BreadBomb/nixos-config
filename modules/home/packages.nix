{ inputs, pkgs, ... }:
{
  home.packages = (with pkgs; [
    htop
    spotify
    google-chrome
    vscode
    discord
    python3
    wlr-randr
    inputs.winapps.packages.${system}.winapps
    inputs.winapps.packages.${system}.winapps-launcher
  ]);
}
