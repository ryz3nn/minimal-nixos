{
  
  description = "Multi-host NixOS + standalone Home Manager (loop version)";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    home-manager.url = "github:nix-community/home-manager/release-25.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, ... }:
    let
      system = "x86_64-linux";
      hosts = [ "vm" "pc" "lap"];
    in {
      nixosConfigurations = builtins.listToAttrs (builtins.map (name: {
        name = name;
        value = nixpkgs.lib.nixosSystem {
          inherit system;

          modules = [
            ./hosts/${name}/config.nix

            # Home Manager integration
            home-manager.nixosModules.home-manager
            {
              home-manager.backupFileExtension = "backup";
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.derek = import ./hosts/${name}/home.nix;
            }
          ];
        };
      }) hosts);

      homeConfigurations = builtins.listToAttrs (builtins.map (name: {
        name = "derek@${name}";
        value = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.${system};
          modules = [ ./hosts/${name}/home.nix ];
          extraSpecialArgs = { inherit nixpkgs home-manager; };
        };
      }) hosts);
    };
}
