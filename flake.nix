{
  description = "My resume, available in english and in french";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/master";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = import nixpkgs { inherit system; };
      in with pkgs; {
        defaultPackage = pkgs.stdenvNoCC.mkDerivation {
          name = "Curriculum-Vitae";
          buildInputs = [ texlive.combined.scheme-full ];
          src = ./.;
          buildPhase = "latexmk -pdf resume_en.tex resume_fr.tex";
          installPhase = ''
            mkdir -p $out
            cp resume_en.pdf $out/
            cp resume_fr.pdf $out/
          '';
        };

        devShell = mkShell { buildInputs = [ texlive.combined.scheme-full ]; };
      });
}
