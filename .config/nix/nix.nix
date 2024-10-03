{ ... }:

{
  nix = {
    extraOptions = ''
      trusted-users = root jjb
    '';
    settings = {
      experimental-features = [
        "flakes"
        "nix-command"
      ];
    };
  };
}

