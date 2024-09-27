# dotfiles

dotfiles managed by stow.

## Nix

Nix system config is stored here under the .config/nix folder as a flake based system config. Just cd into the nix folder, and (if youre on your home machine) run

```bash
sudo nixos-rebuild switch --flake .
```

If youre not on your home machine, first copy the hardware config

```bash
sudo cp /etc/nixos/hardware-configuration.nix ~/.config/nix/hardware-configuration.nix
```

then rebuild the system using the command above.

## Stow

Stow creates symlinks to these dotfiles. Once youve pulled this repo (hopefully into ~/dotfiles) just run

```bash
stow .
```

and it will create symlinks to this directorys folders and files one directory up, i.e. everything here will be copied into the directory above so that your .config folder is in the right place where everything expects it to be.
