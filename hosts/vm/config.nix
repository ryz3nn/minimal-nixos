{
        imports = [
            # Hardware
            ./hardware-configuration.nix

            # Module
            ../../modules/nixos/audio.nix
            ../../modules/nixos/boot.nix
            ../../modules/nixos/network.nix
            ../../modules/nixos/nix.nix
            ../../modules/nixos/timezome.nix
            ../../modules/nixos/user.nix
            ../../modules/nixos/zram.nix
            ../../modules/nixos/vm.nix

        ];
}