{
  description = "My First NixOS Flake Configuration";

  inputs = {
    # We point to the stable NixOS release branch
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations = {
      # This name MUST match the networking.hostName in your configuration.nix
      nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
        ];
      };
    };
  };
}
