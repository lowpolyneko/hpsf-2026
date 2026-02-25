with import <nixpkgs> { };

mkShell {
  packages = [
    inkscape
    texlive.combined.scheme-full
  ];
}
