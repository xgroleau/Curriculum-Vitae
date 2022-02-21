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
        defaultPackage = pkgs.stdenv.mkDerivation {
          name = "Curriculum-Vitae";
          buildInputs = [ texlive.combined.scheme-full ];
          src = ./.;
          buildPhase =
            "latexmk -pdf resume_en.tex && latexmk -pdf resume_fr.tex";

          meta = with pkgs.lib; {
            description = "My resume, available in english and in french";
            license = licenses.mit;
          };
        };

        devShell = mkShell { buildInputs = [ texlive.combined.scheme-full ]; };
      });
}
