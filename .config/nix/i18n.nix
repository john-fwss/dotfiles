{ ... }:

let
  enus = "en_US.UTF-8";
in

{
  i18n = {
    defaultLocale = enus;
    extraLocaleSettings = {
      LC_ADDRESS = enus;
      LC_IDENTIFICATION = enus;
      LC_MEASUREMENT = enus;
      LC_MESSAGES = enus;
      LC_MONETARY = enus;
      LC_NAME = enus;
      LC_NUMERIC = enus;
      LC_PAPER = enus;
      LC_TELEPHONE = enus;
      LC_TIME = enus;
    };
  };
}

