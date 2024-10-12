{ pkgs, ... }:

{
  environment = {
    sessionVariables = {
      NIXOS_OZONE_WL = "1";
      WLR_NO_HARDWARE_CURSORS = "1";
      XDG_CURRENT_DESKTOP = "hyprland";
    };
    shellAliases = {
      c = "clear";
      cat = "bat";
      code = "codium";
      d = "docker";
      ff = "fastfetch";
      g = "git";
      h = "Hyprland";
      kys = "exit";
      ls = "eza --tree --long --level 1 --git --no-user --time-style long-iso --group-directories-first --icons=always --header --smart-group";
    };
    systemPackages = with pkgs; [
      bat
      btop
      buf
      cliphist
      devenv
      discord
      docker
      eza
      fastfetch
      (wrapFirefox (firefox-unwrapped.override { pipewireSupport = true; }) {})
      gnumake
      gnupg
      go
      gofumpt
      golangci-lint
      gopls
      go-migrate
      grpcurl
      kitty
      libnotify
      librecad
      lua-language-server
      mako
      mkdocs
      ngrok
      nixd
      ollama
      postgres-lsp
      protoc-gen-go
      protoc-gen-connect-go
      ripgrep
      rofi-wayland
      spotify
      starship
      steam
      stow
      stylua
      sqlc
      swww
      taplo
      temporal-cli
      vlc
      vscodium
      waybar
      wl-clipboard
      wttrbar
      zig
    ];
    variables = {
      STARSHIP_CONFIG = "/home/jjb/.config/starship/starship.toml";
      VISUAL = "nvim";
    };
  };
}

