{
    let 
        module = "../../modules/nixos"
    in
        imports = [
            # Hardware
            ./hardware-configuration.nix

            # Module
            ${module}/audio.nix
            ${module}/boot.nix
            ${module}/network.nix
            ${module}/nix.nix
            ${module}/timezome.nix
            ${module}/user.nix
            ${module}/zram.nix
            ${module}/vm.nix

        ];
}