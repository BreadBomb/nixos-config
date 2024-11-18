{inputs, username, host, ...}: {
  imports = [
    ./hyprland # window manager
    ./zsh #shell
    ./ags
    ./packages.nix
    ./rofi.nix
    ./theme.nix
    ./alacritty.nix
    ./virtualisation.nix
  ];
}