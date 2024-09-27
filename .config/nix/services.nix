{ ... }:

{
  services = {
    getty = {
      autologinUser = "jjb";
    };
    pipewire = {
      enable = true;
      alsa = {
        enable = true;
	support32Bit = true;
      };
      pulse = {
        enable = true;
      };
      jack = {
        enable= false;
      };
    };
    xserver = {
      videoDrivers = [ "nvidia" ];
      xkb = {
        layout = "us";
	variant = "";
      };
    };
  };
}

