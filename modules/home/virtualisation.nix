{ inputs, pkgs, ... }:
{
  imports = [ inputs.nixvirt.nixosModules.default ];

  inputs.nixvirt.nixosModules.default.virtualisation.libvirt = {
    enable = true;
    swtpm.enable = true;
    connections."qemu:///session".domains = [
      {
      definition = inputs.nixvirt.lib.domain.writeXML (inputs.nixvirt.lib.domain.templates.windows
        {
          name = "Bellevue";
          uuid = "def734bb-e2ca-44ee-80f5-0ea0f2593aaa";
          memory = { count = 8; unit = "GiB"; };
          storage_vol = null;
          install_vol = /home/jonah/VM-Storage/Win11_24H2_EnglishInternational_x64.iso;
          nvram_path = null;
          virtio_net = true;
          virtio_drive = true;
          install_virtio = true;
        });
      }
    ];
    qemu = {
      package = pkgs.qemu_kvm;
      runAsRoot = true;
      swtpm.enable = true;
      ovmf = {
        enable = true;
        packages = [(pkgs.OVMF.override {
          secureBoot = true;
          tpmSupport = true;
        }).fd];
      };
    };
  };
}