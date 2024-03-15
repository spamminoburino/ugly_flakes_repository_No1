{ pkgs }:

let
in
pkgs.mkShell {
 
 buildInputs = with pkgs; [
 
  ];
 
 packages = [
    pkgs.nodejs_21
  ];
}
