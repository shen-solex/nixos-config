{
  description = ''
    A flake providing a wrapped `wezterm` package with an extra keybind!
  '';
  inputs.wrappers.url = "github:BirdeeHub/nix-wrapper-modules";
  outputs = { self, wrappers }: {
    # These things work without flakes too,
    # but this gives an example from start to finish!
    packages.x86_64-linux.default = wrappers.lib.evalPackage
      ({ config, lib, wlib, pkgs, ... }: {
        pkgs = wrappers.inputs.nixpkgs.legacyPackages.x86_64-linux;
        imports = [ wlib.wrapperModules.niri ];
        
      });
  };
}
