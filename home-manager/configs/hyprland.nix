{
  programs.kitty.enable = true; # required for the default Hyprland config
  #programs.hyprland.enable = true;
  wayland.windowManager.hyprland.enable = true; # enable Hyprland
  wayland.windowManager.hyprland.xwayland.enable = true;
  wayland.windowManager.hyprland.systemd.enable = true;
#  wayland.windowManager.hyprland.settings = {
#    "$mod" = "SUPER";
#    bind =
#      [
#        "$mod, F, exec, firefox"
#        ", Print, exec, grimblast copy area"
#      ]
#      ++ (
#        # workspaces
#        # binds $mod + [shift +] {1..9} to [move to] workspace {1..9}
#        builtins.concatLists (builtins.genList (i:
#            let ws = i + 1;
#            in [
#              "$mod, code:1${toString i}, workspace, ${toString ws}"
#              "$mod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
#            ]
#          )
#          9)
#      );
#  };

  home.file."./.config/hypr/" = {
    source = ./hyprland;
    recursive = true;
  };

  # Optional, hint Electron apps to use Wayland:
  #home.sessionVariables.NIXOS_OZONE_WL = "1";
}