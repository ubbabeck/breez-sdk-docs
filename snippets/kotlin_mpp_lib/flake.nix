{
  description = "Kotlin flake";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs =
    { self
    , nixpkgs
    , flake-utils
    ,
    }:
    flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
     # TODO add an overlay to set java 17 for gradle 
      devShells.default = pkgs.mkShell {
        buildInputs = with pkgs; [
          kotlin
          jdk
          ktlint
          gradle
        ];
      };
      
      formatter = pkgs.nixpkgs-fmt;
    });
}
