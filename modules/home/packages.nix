{ inputs, pkgs, ... }: 
{
  home.packages = (with pkgs; [
    spotify
    google-chrome
    kitty
    vscode
    discord
    python3
    inputs.winapps.packages.${system}.winapps
    inputs.winapps.packages.${system}.winapps-launcher
  ]);
}
