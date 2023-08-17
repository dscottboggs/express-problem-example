# DEVELOPMENT shell environment
{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  nativeBuildInputs = with pkgs.buildPackages; [
    nodejs yarn
  ];
}

