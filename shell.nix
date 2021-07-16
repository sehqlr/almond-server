let sources = import ./nix/sources.nix;
in { pkgs ? import sources.nixpkgs {} }:

pkgs.mkShell {
  buildInputs = [
      pkgs.nodePackages.node2nix
  ];
}
