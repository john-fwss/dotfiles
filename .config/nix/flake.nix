{
  description = "onyx flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ...}@inputs: {
    nixosConfigurations.onyx = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./boot.nix
	./environment.nix
	./fonts.nix
	./hardware-configuration.nix
	./hardware.nix
	./i18n.nix
	./nix.nix
	./nixpkgs.nix
	./networking.nix
	./programs.nix
	./security.nix
	./services.nix
	./system.nix
	./time.nix
	./users.nix
	./virtualisation.nix
	./xdg.nix
      ];
    };
  };
}

