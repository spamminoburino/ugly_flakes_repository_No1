{
  description = "base nodejs template";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    (flake-utils.lib.eachDefaultSystem
      (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};

        in
        {


         # packages.default = callPackage ./. {
          #  inherit ;
          #};

          devShells.default = callPackage ./shell.nix {
            inherit pkgs;
          };
        })
    );
}
