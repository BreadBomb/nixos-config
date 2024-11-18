{ inputs, nixpkgs, self, username, host, ...}:
{
  imports = [
    ./bootloader.nix
    ./hyprland.nix
    ./system.nix
    ./user.nix
    ./program.nix
  ];
}