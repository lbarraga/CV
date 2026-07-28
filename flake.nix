{
  description = "Lukas Barragan Torres CV";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = {
    self,
    nixpkgs,
  }: let
    supportedSystems = ["x86_64-linux" "aarch64-linux"];
    forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
  in {
    packages = forAllSystems (
      system: let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        default = pkgs.stdenvNoCC.mkDerivation {
          pname = "lukas-cv";
          version = "1.0.0";
          src = ./.;

          nativeBuildInputs = [pkgs.typst];

          buildPhase = ''
            export XDG_CACHE_HOME=$(mktemp -d)
            typst compile --font-path ${pkgs.libertine}/share/fonts cv.typ
          '';

          installPhase = ''
            cp cv.pdf $out
          '';
        };
      }
    );
  };
}
