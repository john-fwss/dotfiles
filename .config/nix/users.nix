{ pkgs, ... }: 

{
  users = {
    users = {
      jjb = {
        isNormalUser = true;
	description = "jjb";
	extraGroups = [ "networkmanager" "wheel" ];
	packages = with pkgs; [];
      };
    };
  };
}

