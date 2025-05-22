# Simple flake template for custom develop shells.
#

{
  description = "Devlop Shell Description";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in {
        devShells.default = pkgs.mkShell {
          
          # Package List           

          packages = with pkgs; [
          ];

          shellHook = ''
            echo "Welcome To This Shell"
          '';
        };
      });
}
