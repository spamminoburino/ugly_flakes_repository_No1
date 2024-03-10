{ pkgs }:

let
in
pkgs.mkShell {
 
 buildInputs = with pkgs; [
 
  ];
 
 packages = [
    nodejs_21
  ];
}
