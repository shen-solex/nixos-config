{ config, pkgs, ... }:

{
  programs.kitty = {
    enable = true;
    enableGitIntegration = true;
    shellIntegration.enableFishIntegration = true;
    settings = {
      shell = "${pkgs.fish}/bin/fish";
      allow_remote_control = true;
      enabled_layouts = "splits:split_axis=horizontal";
    };
    extraConfig = ''
      # Create a new "manage windows" mode (mw)
      map --new-mode mw ctrl+a

      # Switch focus to the neighboring window in the indicated direction using arrow keys
      map --mode mw left neighboring_window left
      map --mode mw right neighboring_window right
      map --mode mw up neighboring_window up
      map --mode mw down neighboring_window down

      # Move the active window in the indicated direction
      map --mode mw shift+up move_window up
      map --mode mw shift+left move_window left
      map --mode mw shift+right move_window right
      map --mode mw shift+down move_window down

      # Resize the active window
      map --mode mw n resize_window narrower
      map --mode mw w resize_window wider
      map --mode mw t resize_window taller
      map --mode mw s resize_window shorter

      map --mode mw equal launch --location=hsplit
      map --mode mw shift+equal launch --location=vsplit

      # Exit the manage window mode
      map --mode mw esc pop_keyboard_mode  
    '';
  };
}
