{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    treefmt = {
      url = "github:numtide/treefmt-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      nixpkgs,
      flake-utils,
      treefmt,
      ...
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };
        treefmt-eval = treefmt.lib.evalModule pkgs ./treefmt.nix;
      in
      {
        formatter = treefmt-eval.config.build.wrapper;
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            jdk25
            gnumake
          ];
        };
      }
    );
}
