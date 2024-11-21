{inputs, username, host, ...}: {
  imports = [
    ./hyprland # window manager
    ./zsh #shell
    ./packages.nix
    ./rofi.nix
    ./theme.nix
    ./alacritty.nix
    ./shell.nix
  ];
}