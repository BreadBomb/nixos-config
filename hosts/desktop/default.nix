{ pkgs, ... }: 
{
  imports = [
    ./hardware-configuration.nix
    ./../../modules/core
    ./nvidia.nix
  ];

  powerManagement.cpuFreqGovernor = "performance";
}