{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };
  };

  outputs = inputs: inputs.flake-parts.lib.mkFlake {inherit inputs;} {
    systems = ["x86_64-linux"];
    perSystem = { self', pkgs, ... }: {
      devShells.default = pkgs.mkShell {
        packages = [pkgs.texlive.combined.scheme-full];
        name = "resume";
      };
    };
  };
}
