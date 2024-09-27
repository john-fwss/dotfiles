{ config, ...}:

{
  hardware = {
    graphics = {
      enable = true;
    };
    nvidia = {
      modesetting = {
        enable = true;
      };
      nvidiaSettings = true;
      package = config.boot.kernelPackages.nvidiaPackages.production;
      powerManagement = {
        enable = true;
      };
    };
  };
}

