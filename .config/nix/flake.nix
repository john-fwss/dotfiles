{
  description = "onyx flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixos-wsl.url = "github:nix-community/NixOS-WSL/main";
  };

  outputs = { self, nixpkgs, nixos-wsl, ...}@inputs: {
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
    nixosConfigurations.gengar = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
	./environment.nix
        ./fonts.nix
        ./i18n.nix
        ./nix.nix
        ./nixpkgs.nix
        ./networking-gengar.nix
        ./programs.nix
        ./programs-gengar.nix
        ./system.nix
        ./time.nix
        ./users.nix
        ./virtualisation.nix
        nixos-wsl.nixosModules.default
	{
          system.stateVersion = "24.05";
          wsl.enable = true;
	  wsl.defaultUser = "jjb";
        }
      ];
    };
  };
}
