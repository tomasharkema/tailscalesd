{ pkgs, ... }:
with pkgs; mkShell {
  # nativeBuildInputs is usually what you want -- tools you need to run
  nativeBuildInputs = with pkgs.buildPackages; [
    go
    direnv
    gotools
    gopls
    go-outline
    gocode
    gopkgs
    gocode-gomod
    godef
    golint
    nixpkgs-fmt
  ];

  buildPhase = ''
    make clean && make
  '';

  shellHook = ''
    export ASSUME_NO_MOVING_GC_UNSAFE_RISK_IT_WITH=go1.21
  '';
}
