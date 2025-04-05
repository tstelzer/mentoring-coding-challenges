{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs {
          inherit system;
          config = {
            allowUnfree = true;
          };
        };
        nodejs = pkgs.nodejs_23;
        corepackEnable = pkgs.runCommand "corepack-enable" { } ''
          mkdir -p $out/bin
          ${nodejs}/bin/corepack enable --install-directory $out/bin
        '';
      in
      with pkgs;
      {
        devShells.default = mkShell rec {
          buildInputs = [
            nodejs_23
            corepackEnable
            biome
          ];
        };
      }
    );
}
