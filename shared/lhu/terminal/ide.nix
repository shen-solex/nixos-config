{ config, pkgs, ... }:

{
  programs.helix = {
    enable = true;
    defaultEditor = true;
    extraPackages = with pkgs; [
      nixd
      nixfmt
      bash-language-server
      jdt-language-server
      yaml-language-server
    ];
    settings = {
      editor.cursor-shape = {
        normal = "block";
        insert = "bar";
        select = "underline";
      };
      editor.color-modes = true;
      keys.normal = {
        C-g = [
          ":write-all"
          ":insert-output lazygit >/dev/tty"
          ":redraw"
          ":reload-all"
        ];
      };
      keys.normal.space = {
        e = [
          '':sh rm -f /tmp/unique-file-h21a434''
          '':insert-output yazi "%{buffer_name}" --chooser-file=/tmp/unique-file-h21a434''
          '':sh printf "\x1b[?1049h\x1b[?2004h" > /dev/tty''
          '':open %sh{cat /tmp/unique-file-h21a434}''
          '':redraw''
          '':set mouse false''
          '':set mouse true''
        ];
      };
    };
  };

  programs.yazi = {
    enable = true;
  };

  programs.zellij = {
    enable = true;
    settings = {
      default_shell = "fish";
    };
  };

  xdg.configFile."zide" = {
    source = builtins.fetchGit {
      url = "https://github.com/josephschmitt/zide.git";
    };
    recursive = true;
  };
  
  home.sessionPath = [ "$HOME/.config/zide/bin" ];
}
