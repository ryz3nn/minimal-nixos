{
        imports = [
            # Hardware
            ./hardware-configuration.nix

            # Module
            ../../modules/nixos/audio.nix
            ../../modules/nixos/boot-uefi.nix
            ../../modules/nixos/network.nix
            ../../modules/nixos/nix.nix
            ../../modules/nixos/timezone.nix
            ../../modules/nixos/user.nix
            ../../modules/nixos/zram.nix
            ../../modules/nixos/display-manager.nix
            #../../modules/nixos/vm.nix

        ];
}
